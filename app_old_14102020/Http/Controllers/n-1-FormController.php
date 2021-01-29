<?php
  namespace App\Http\Controllers;

  use Illuminate\Http\Request;
  use App\Http\Requests\FormValidation;
  use DB;
  use App\Form;
  use Yajra\Datatables\Datatables;

  use Mail;
  use App\Mail\Forms;
  use App\Mail\Assign_Form;
  use App\Mail\Send_To_CBC;
  use App\Mail\CBC_Change;
  
  class FormController extends Controller
  {
  public function __construct()
  {
  $this->middleware('auth');
  }
  public function index()
  {
      $data = Form::all();
      return view('forms.list',compact('data'));
  }
  public function test()
  {
    $data = [
      'user_name' => \Auth::user()->name,
      'msg' => 'You recieved new form request',
    ];
return Mail::to('francisgill42@gmail.com')  
->cc('francisgill42@gmail.com')
->bcc('francisgill42@gmail.com')      
->send(new Forms($data));


//  return dd(Datatables::of(Form::query())->make(true));
  }

  public function assign(Request $request,$id)
  {
  $updated = DB::table('forms')
            ->where('form_id',$id)
            ->update([
              'assigned_to' => $request->user_id
              ]);
  if($updated){
    Mail::to('francisgill42@gmail.com')  
                 ->send(new Assign_Form());
     return back()->with('msg','Form has been assigned');
    }
    else{

      return back()->with('err','Form has already been assigned');
    }

  }



  public function show($id)
  {
//    dd($id);
        $customer_id = Form::where('form_id',$id)->first()->customer_id;
        $form_data = \DB::table('forms')->where('form_id',$id)->first();
        
        return view('retails.single',[
                'form_id' => $id,
                "user_name" => \DB::table('users')->where('id',$form_data->user_id)->first()->name,
                'form_data' => $form_data,
                'customer_details' => \DB::table('customers')->where('id',$customer_id)->first(),
                'bank_details' => \DB::table('bank_details')->where('customer_id',$customer_id)->first(),
                'investment_details' => \DB::table('investment_details')->where('customer_id',$customer_id)
                          ->first(),
                'fatca_details' => \DB::table('fatca_details')->where('customer_id',$customer_id)->first(),
                'msgs' => \DB::table('discussions')->where('form_id',$id)->get(),
              ]);

  }

  public function send_to_cbc(Request $r,$id)
  {

     $updated = DB::table('forms')->where('form_id',$id)->update(['status' => 3]);

     if($updated){
        Mail::to('francisgill1000@gmail.com')        
                ->send(new Send_To_CBC());
    $arr = [
    'form_id'=>$id,
    'msg'=>$r->msg,
    'receiver_id' => \DB::table('users')->where('role_id',5)->first()->id,
    'sender_id' =>  \Auth::user()->id,
    'created_at' => now(),
    'updated_at' => now(),
    ];
    DB::table('discussions')->insert($arr);
    return back()->with('msg','form has been sent to cbc');
     }else{
      return back()->with('err','form has already been sent to cbc.');   
     }
     
  }

  public function cbc_edit($id)
  {
//    dd(\Auth::user()->id);
    $customer_id = \DB::table('forms')->where('form_id',$id)->first()->customer_id;
    $customers = \DB::table('customers')->where('id',$customer_id)->first();
    return view('retails.cbc-edit',[
      'form_id'=> $id,
      'customer_details' => $customers,
      'msgs' => \DB::table('discussions')->where('form_id',$id)
      ->get(),
      ]);
  }

  public function cbc_done(Request $req,$id)
  {
    $customer_id = \DB::table('forms')->where('form_id',$id)->first()->customer_id;

    $zakat_certificate = '';
    if($req->hasFile('zakat_certificate')){
      $zakat_certificate = $req->zakat_certificate->getClientOriginalName();
      $req->zakat_certificate->move(public_path('uploads/zakat_certificates/'),$zakat_certificate); 
      }
      else{
        $zakat_certificate = $req->old_file;
      }

    $arr = [
      "name" => $req->name,
      "father_name" => $req->father_name,
      "mother_name" => $req->mother_name, 
      "dob" => $req->dob, 
      "cnic" => $req->cnic,
      "cnic_issue_date" => $req->cnic_issue_date,
      "pob_country" => $req->pob_country,
      "pob_city" => $req->pob_city,
      "email" => $req->email,
      "cell" => $req->cell,    
      "occupation" => $req->occupation,
      "soi" => $req->soi,
      "address" => $req->address,
      "country1" => $req->country1,
      "city1" => $req->city1,
      "zakat" => $req->zakat,
      "zakat_certificate" => $zakat_certificate,
      "updated_at" => now(),
  ];
  $old = \DB::table('customers')->where('id',$customer_id)->first();
  // dd($old,json_decode(json_encode($arr)));
  $updated = \DB::table('customers')->where('id',$customer_id)->update($arr);
  if($updated){

    $success = DB::table('forms')
    ->where('form_id',$id)
    ->update(['status' => 4]);

    DB::table('discussions')->insert([
      'form_id'=>$id,
      'msg'=>$req->msg,
      'receiver_id' => 0,
      'sender_id' =>  \Auth::user()->id,
      'created_at' => now(),
      'updated_at' => now(),
      ]);
  }
  Mail::to('francisgill1000@gmail.com')        
  ->send(new CBC_Change());
  return back()->with('msg','record has been updated');
  }

  }
