<?php
  namespace App\Http\Controllers;

  use Illuminate\Http\Request;
  use App\Http\Requests\FormValidation;
  use DB;
  use App\Form;
  use Yajra\Datatables\Datatables;


  class FormController extends Controller
  {
  public function __construct()
  {
  $this->middleware('auth');
  }
  public function test()
  {
  return Datatables::of(Form::query())->make(true);
  }

  public function assign(Request $request,$id)
  {
  DB::table('forms')->where('form_id',$id)->update(['assigned_to' => $request->user_id]);
  return back()->with('msg','Form has been assigned');
  }
  /**
  * Show the form for creating a new resource.
  *
  * @return \Illuminate\Http\Response
  */
  public function create()
  {
  if(\Auth::user()->role_id == 1){
  $data = DB::table('funds')->get();
  $fund_titles =   DB::table('funds')->select('title')->get();
  return view('forms.form',['data' => $data,'fund_titles' => $fund_titles]);
  }

  else{
  return back();
  }

  }

  public function render_string($string)
  {
     return str_ireplace("'","",$string);
  }


  public function preview(Request $request)
  {
    $cnic_file = $request->cnic_file->getClientOriginalName();
    $request->cnic_file->move(public_path('uploads/'),$cnic_file);
    //dd($cnic_file);
  $filenames = [];
  foreach ($request->mop_files as $files) {
  $filename = $files->getClientOriginalName();
  $files->move(public_path('uploads/'),$filename);
  $filenames[] = $filename;
  }


  $attachments = [];
  $combined = array_combine($filenames,$request->mop);
  foreach ($combined as $files => $mop) {
  $attachments[] = [$mop,$files];
  }

  $funds = json_encode(array_chunk($request->funds, 3));

  $payment_details = json_encode($attachments);

  foreach (json_decode($funds) as $fund_data) {
  if($fund_data[1] >  25000){
  return back()->with('err','investment cannot process over 25000.');
  }
  else{

  $data = [
  "form_id" => 'SA'.substr(time(),6),
  "name" => $this->render_string($request->name),
  "father_name" => $this->render_string($request->father_name),
  "email" => $request->email,
  "dob" => $request->dob,
  "cnic" => $request->cnic,
  "cnic_file" => $cnic_file,
  "cell" => $request->cell,
  "occupation" => $this->render_string($request->occupation),
  "soi" => $this->render_string($request->soi),
  "address" => $this->render_string($request->address),
  "country" => $this->render_string($request->country),
  "city" => $this->render_string($request->city),
  "payment_details" => $payment_details,
  "funds" => $funds,
  "status" => "pending",
  "land_from" => "SALESAPP",
  "user_id" => \Auth::user()->id,
  "created_at" => now(),
  "updated_at" => now(),
  ];
  //  dd($data);
  return view('forms.preview',['data' => $data]);

  // $success = Form::create($data);
  //
  // if($success){
  // return back()->with('msg','Your form has been submitted.');
  // }
  // else{
  // return back()->with('err','Your form has not been submitted.');
  // }


  }
  }



  }



  public function Store(Request $request)
  {
  $filenames = [];
  foreach ($request->mop_files as $files) {
  $filename = $files->getClientOriginalName();
  $files->move(public_path('uploads/'),$filename);
  $filenames[] = $filename;
  }


  $attachments = [];
  $combined = array_combine($filenames,$request->mop);
  foreach ($combined as $files => $mop) {
  $attachments[] = [$mop,$files];
  }

  $funds = json_encode(array_chunk($request->funds, 3));
  $payment_details = json_encode($attachments);

  foreach (json_decode($funds) as $fund_data) {
  if($fund_data[1] >  25000){
  return back()->with('err','investment cannot process over 25000.');
  }
  else{

  $data = [
  "form_id" => 'SA'.substr(time(),6),
  "name" => $this->render_string($request->name),
  "father_name" => $this->render_string($request->father_name),
  "email" => $request->email,
  "dob" => $request->dob,
  "cnic" => $request->cnic,
  "cnic_file" => $request->cnic_file,
  "cell" => $request->cell,
  "occupation" => $this->render_string($request->occupation),
  "soi" => $this->render_string($request->soi),
  "address" => $this->render_string($request->address),
  "country" => $this->render_string($request->country),
  "city" => $this->render_string($request->city),
  "payment_details" => $payment_details,
  "funds" => $funds,
  "mop_file_tmp" => $request->mop_files,
  "status" => "pending",
  "land_from" => "SALESAPP",
  "user_id" => \Auth::user()->id,
  "created_at" => now(),
  "updated_at" => now(),
  ];
    dd($data);
  return view('forms.preview',['data' => $data]);

  // $success = Form::create($data);
  //
  // if($success){
  // return back()->with('msg','Your form has been submitted.');
  // }
  // else{
  // return back()->with('err','Your form has not been submitted.');
  // }


  }
  }



  }



  /**
  * Display the specified resource.
  *
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function show($id)
  {
  $data = DB::table('forms')->where('form_id',$id)->get();
  return view('forms.single',['data' => $data]);
  }

  /**
  * Show the form for editing the specified resource.
  *
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function edit($id)
  {
  //
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
  //
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
