<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;
use DB;
use App\Form;
use App\Field;
use App\Mail\Correction;
use App\Mail\Correction_Response;

class Fields extends Controller
{

  public function __construct()
  {
    $this->middleware('auth');
  }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $data = DB::table('fields')->where('user_id',\Auth::user()->id)->get();
      return view('fields.list',['data' => $data]);
    }

    public function corrections(Request $request,$id)
    {


       if(!$request->cd && !$request->bd && !$request->ids && !$request->od && !$request->fd){
         return back()->with('err','Atleast 1 field is required to send request.');
       }

      DB::table('discussions')->insert([
        'form_id'=>$id,
        'msg'=>$request->msg,
        'receiver_id' => $request->user_id,
        'sender_id' => \Auth::user()->id,
        'created_at' => now(),
        'updated_at' => now(),
      ]);


        $data = [
        'form_id' => $id,
        'customer_details' => json_encode($request->cd),
        'bank_details' => json_encode($request->bd),
        'investment_details' => json_encode($request->ids),
        'other_details' => json_encode($request->od),
        'fatca_details' => json_encode($request->fd),
        'user_id' => $request->user_id,
        'status' => 'unchecked',
        "created_at" => now(),
        "updated_at" => now(),
        ];

        // if(DB::table('fields')->where('form_id',$id)->exists()){
        //     $success = DB::table('fields')->where('form_id',$id)->update($data);
        // }else{
        //     $success = DB::table('fields')->insert($data);
        // }

        $success = (DB::table('fields')->where('form_id',$id)->exists()) 
        ? DB::table('fields')->where('form_id',$id)->update($data) : DB::table('fields')->insert($data) ;


        if($success){
          $status_updated = DB::table('forms')->where('form_id',$id )->update(['status' => 1]);
          $result_msg = ['msg','Your form has been submitted.'];  
          
          $sales_email = DB::table('users')->where('id',$request->user_id)->first()->email;
          Mail::to($sales_email)->send(new Correction());
           $recipients = \DB::table('users')->select('email')->where('role_id',3)->get();
	 	
	 	 foreach ($recipients as $recipient) {
	 		$send = Mail::to($recipient)->send(new Correction());
	 	}
	 	
        }
        else{
        $result_msg = ['err','Your form has not been submitted.'];  
        }

        list($msg_type,$msg) = $result_msg;

        return back()->with($msg_type,$msg);
    }

    public function edit($id)
    {
        $customer_id = Form::where('form_id',$id)->first()->customer_id;
        $cds = json_decode(Field::where('form_id',$id)->first()->customer_details);
        $bds = json_decode(Field::where('form_id',$id)->first()->bank_details);
        $ids = json_decode(Field::where('form_id',$id)->first()->investment_details);
        $ods = json_decode(Field::where('form_id',$id)->first()->other_details);
        $fds = json_decode(Field::where('form_id',$id)->first()->fatca_details);
        $data = [];
     
      if(!is_null($cds)){ 
        foreach($cds as $d){
        $custom_old_data = \DB::table('customers')->where('id',$customer_id)->first()->$d;        
        $cds_new[] = [$d,$custom_old_data];
        }
      }
      if(!is_null($bds)){ 
        foreach($bds as $d){
        $custom_old_data = \DB::table('bank_details')->where('customer_id',$customer_id)->first()->$d;        
        $bds_new[] = [$d,$custom_old_data];
        }
      }  

      if(!is_null($ids)){ 
        foreach($ids as $d){
        $custom_old_data = \DB::table('investment_details')->where('customer_id',$customer_id)->first()->$d;        
        $ids_new[] = [$d,$custom_old_data];
        }
      }  

      if(!is_null($ods)){ 
        foreach($ods as $d){
        $custom_old_data = \DB::table('other_details')->where('customer_id',$customer_id)->first()->$d;        
        $ods_new[] = [$d,$custom_old_data];
        }
      }  

       if(!is_null($fds)){ 
        foreach($fds as $d){
        $custom_old_data = \DB::table('fatca_details')->where('customer_id',$customer_id)->first()->$d;        
        $fds_new[] = [$d,$custom_old_data];
        }
      }  

      return view('fields.edit',[
        'form_id' => $id,
        'cds_new' => $cds_new ?? null,
        'bds_new' => $bds_new ?? null,
        'ids_new' => $ids_new ?? null,
        'ods_new' => $ods_new ?? null,
        'fds_new' => $fds_new ?? null,
        'customer_id' => $customer_id,
        'aiw_db' => \DB::table('investment_details')
                    ->where('customer_id',$customer_id)
                    ->first()->amount_in_words,
        'msgs' => \DB::table('discussions')->where('form_id',$id)->get(),
        ]);


}


public function update(Request $request, $id)
{  
  $customer_id = \DB::table('forms')->where('form_id',$id)->first()->customer_id;

  if($request->hasFile('zakat_certificate')){
  $zakat_certificate = $request->zakat_certificate->getClientOriginalName();
  $request->zakat_certificate->move(public_path('uploads/zakat_certificates/'),$zakat_certificate);	
  $zc_success = DB::table('customers')->where('id',$customer_id)->update(['zakat_certificate' => $zakat_certificate]);	
  }

  if($request->hasFile('cnic_attachment')){
  $cnic_attachment = $request->cnic_attachment->getClientOriginalName();
  $request->cnic_attachment->move(public_path('uploads/cnic_attachment/'),$cnic_attachment);  
  $cnic_attachment_success = DB::table('customers')->where('id',$customer_id)->update(['cnic_attachment' => $cnic_attachment]);  
  }

  if($request->hasFile('soi_attachment')){
  $soi_attachment = $request->soi_attachment->getClientOriginalName();
  $request->soi_attachment->move(public_path('uploads/soi_attachment/'),$soi_attachment);  
  $soi_attachment_success = DB::table('customers')->where('id',$customer_id)->update(['soi_attachment' => $soi_attachment]);  
  }

  if($request->hasFile('attachment')){
  $attachment = $request->attachment->getClientOriginalName();
  $request->attachment->move(public_path('uploads/investment_detail_attachments/'),$attachment);	
  $attach_success = DB::table('investment_details')->where('customer_id',$customer_id)->update(['attachment' => $attachment]);	
  }

  if($request->hasFile('wform')){
  $wform = $request->wform->getClientOriginalName();
  $request->wform->move(public_path('uploads/wforms/'),$wform);	
  $wf_success = DB::table('fatca_details')->where('customer_id',$customer_id)->update(['wform' => $wform]);	
  }



  if($request['cd']){    
    foreach ($request['cd'] as $key => $value) {
     $cd_success = DB::table('customers')->where('id',$customer_id)->update([$key => $value]);
    }
  }

  if($request['bd']){    
    foreach ($request['bd'] as $key => $value) {
     $bd_success = DB::table('bank_details')->where('customer_id',$customer_id)->update([$key => $value]);
    }
  }

  if($request['ids']){    
    foreach ($request['ids'] as $key => $value) {

      $ids_arr = (!$request->aiw_value) ? [$key => $value] : [
        $key => $value,
        'amount_in_words' => $request->aiw_value 
      ];

     $ids_success = DB::table('investment_details')->where('customer_id',$customer_id)
     ->update($ids_arr);
    }
  }

   if($request['od']){    
    foreach ($request['od'] as $key => $value) {
     $od_success = DB::table('other_details')->where('customer_id',$customer_id)->update([$key => $value]);
    }
  }

  if($request['fd']){    
    foreach ($request['fd'] as $key => $value) {
     $fd_success = DB::table('fatca_details')->where('customer_id',$customer_id)->update([$key => $value]);
    }
  }
if(isset($zc_success) 
|| isset($attach)
|| isset($cnic_attachment_success)
|| isset($soi_attachment_success)
|| isset($wf_success)
|| isset($cd_success) 
|| isset($bd_success)
|| isset($ids_success)
|| isset($od_success)
|| isset($fd_success)){
//  dd($id);
  $success = DB::table('fields')
  ->where('form_id',$id)
  ->update(['status' => 'checked']);

  $success = DB::table('forms')
  ->where('form_id',$id)
  ->update(['status' => 2]);

  DB::table('discussions')->insert([
  'form_id'=>$id,
  'msg'=>$request->msg,
  'receiver_id' => \DB::table('discussions')
                  ->where('form_id',$id)
                  ->where('sender_id','!=',\Auth::user()->id)
                  ->first()->sender_id,
  'sender_id' =>  \Auth::user()->id,
  'created_at' => now(),
  'updated_at' => now(),
  ]);

  
  

	
	$user_id = DB::table('forms')->where('form_id',$id)->first()->assigned_to;
			
	$retail_email = DB::table('users')->where('id',$user_id)->first();
  
	  if($retail_email){
	  
		 Mail::to($retail_email->email)->send(new Correction_Response());  	
	  }
	  
	 $recipients = \DB::table('users')->select('email')->where('role_id',3)->get();
	 	
	 	 foreach ($recipients as $recipient) {
	 		$send = Mail::to($recipient)->send(new Correction_Response());
	 	}
  
		return back()->with('msg','Field has been updated');
}


}

}
