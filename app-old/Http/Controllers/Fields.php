<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

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
      return view('forms.list',['data' => $data]);
    }

    public function corrections(Request $request,$id)
    {

      $fields = array_merge(
        ['fields' => $request->fields],
        ['funds'=>$request->funds],
        ['payment_details' => $request->payment_details]
      );
      if(!$request->fields && !$request->funds && !$request->payment_details){
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
        'fields' => json_encode($fields),
        'user_id' => $request->user_id,
        'status' => 'unchecked',
        "created_at" => now(),
        "updated_at" => now(),
        ];

        if(DB::table('fields')->where('form_id',$id)->exists()){
        $success = DB::table('fields')->where('form_id',$id)->update($data);
        }
        else{
            $success = DB::table('fields')->insert($data);
        }

        if($success){

          $role = \Auth::user()->role->role;
          $arr_single =  ['status' => 'sent for changes'];
          $arr_double =  ['assigned_to' => 0,'status' => 'sent for changes'];
          $update_form = ($role == 'retail_admin') ? $arr_double : $arr_single;
          DB::table('forms')->where('form_id',$id )->update($update_form);
          return back()->with('msg','Your form has been submitted.');

        }
        else{
        return back()->with('err','Your form has not been submitted.');
        }
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $field = json_decode(DB::table('fields')
        ->where('form_id',$id)
        ->where('user_id',\Auth::user()->id)
        ->pluck('fields')[0]);


        $form = DB::table('forms')
        ->where('form_id',$id)
        ->where('user_id',\Auth::user()->id)
        ->first();
        $fields_array = [];
        $funds_array = [];
        $payment_details = [];
        if($field->fields !== null){
        foreach ($field->fields as $key) {
          $fields_array[] = ['keys' => $key,'values' => $form->$key];
        }
        }

      if($field->funds !== null){

        foreach ($field->funds as $temp) {
          foreach (json_decode($form->funds) as $value) {

            if($temp == $value[0]){
              $funds_array[] = $value;
            }
          }

          }

        }
      if($field->payment_details !== null){

          foreach (json_decode($form->payment_details) as $value) {

            if(in_array($value[0],$field->payment_details)){
              $payment_details[] = $value;

            }



          }

        }

//      dd($field->payment_details);

        return view('forms.edit',[
          'data' => $form ,
          'fields_array' => $fields_array,
          'funds_array' => $funds_array,
          'payment_details' => $payment_details
        ]);

}

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

public function update(Request $request, $id)
{
  $discussions = \DB::table('discussions')->where('form_id',$id)
  ->where('sender_id','!=',\Auth::user()->id)
  ->first();

  DB::table('discussions')->insert([
  'form_id'=>$id,
  'msg'=>$request->msg,
  'receiver_id' => $discussions->sender_id,
  'sender_id' =>  \Auth::user()->id,
  'created_at' => now(),
  'updated_at' => now(),
  ]);

      $pd_arr1 = [];
      $pd_arr2 = [];
      $first = \DB::table('forms')->where('form_id',$id)->first();

      foreach (json_decode($first->payment_details) as $value) {

        foreach(array_collapse($request->files) as $key => $values){
        if($value[0] == $key){

            $filename = $values[0]->getClientOriginalName();
            $pd_arr1[] = [$key,$filename];
            $values[0]->move(public_path('uploads/'),$filename);

          }
          else{ $pd_arr2[] = $value; }

        }
      }



    $arr = (count(array_flatten($request->files)) >= 2) ? [$pd_arr1] : [$pd_arr1,$pd_arr2];
    $data_2b_updated = json_encode(array_chunk(array_flatten($arr),2));

    $payment_details_updated = DB::table('forms')
    ->where('form_id',$id)
    ->update([
    'updated_at' => now(),
    'payment_details' => $data_2b_updated
    ]);


    if(isset($request->fields)){
      foreach ($request->fields as $key => $value) {
        $fields_updated = DB::table('forms')->where('form_id',$id)->update(
          ['updated_at' => now(),$key => $value]);
      }
    }
      if(isset($request->funds)){

      $funds_updated = DB::table('forms')->where('form_id',$id)->update([
        'updated_at' => now(),
        'funds' => json_encode(array_chunk($request->funds,3)),
        'status' => 'answered'
      ]);
    }
    $status = DB::table('fields')->where('form_id',$id )->update(['status' => 'checked','updated_at' => now()]);

    if(isset($fields_updated) || isset($funds_updated ) || $status || isset($payment_details_updated)){
        return back()->with('msg','Changes has been updated');
    }
    else{
        return back()->with('err','Changes has not been updated');
      }


}

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
