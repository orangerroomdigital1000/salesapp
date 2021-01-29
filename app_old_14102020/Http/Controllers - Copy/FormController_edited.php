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
->cc('one@gmail.com')
->bcc('two@gmail.com')      
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
    // Mail::to('francisgill42@gmail.com')  
    //              ->send(new Assign_Form());
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

        $user_name = 'self';
        if($form_data->user_id != 0){
              
              $user_name = \DB::table('users')->where('id',$form_data->user_id)->first()->name;          
        }


        return view('retails.single',[
                'form_id' => $id,
                "user_name" => $user_name,
                'form_data' => $form_data,
                'customer_details' => \DB::table('customers')->where('id',$customer_id)->first(),
                'bank_details' => \DB::table('bank_details')->where('customer_id',$customer_id)->first(),
                'investment_details' => \DB::table('investment_details')->where('customer_id',$customer_id)
        									->first(),
                'other_details' => \DB::table('other_details')->where('customer_id',$customer_id)->first(),          
                'fatca_details' => \DB::table('fatca_details')->where('customer_id',$customer_id)->first(),
                'msgs' => \DB::table('discussions')->where('form_id',$id)->get(),
              ]);

  }

  public function send_to_cbc(Request $r,$id)
  {

  	 $updated = DB::table('forms')->where('form_id',$id)->update(['status' => 3]);

     if($updated){
        // Mail::to('azharcbc@orangeroomdigital.com')        
        //         ->send(new Send_To_CBC());
		$arr = [
		'form_id'=>$id,
		'msg'=>$r->msg,
		'receiver_id' => 76/*\DB::table('users')->where('role_id',5)->first()->id*/,
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
//  	dd(\Auth::user()->id);
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
  // Mail::to('azharcbc@orangeroomdigital.com')        
  // ->send(new CBC_Change());
  return back()->with('msg','record has been updated');
  }

  public function get_base64_img($img)
  {
    return  base64_encode(file_get_contents($img) ?? '');
  }

 
  
  
  public function push_to_crm(Request $request){

    // $cnic_attachment =  base64_encode(file_get_contents('uploads/cnic_attachment/'.$customer_details->cnic_attachment));


    $customer_details = json_decode($request->customer_details);
    //$bank_details = json_decode($request->bank_details);
    //$investment_details = json_decode($request->investment_details);
    //$fatca_details = json_decode($request->fatca_details);

    // echo "<pre>";
    // print_r($bank_details);
    // print_r($investment_details);
    // print_r($fatca_details);
    // die;
    $cnic_ext =  \File::extension('uploads/cnic_attachment/'.$customer_details->cnic_attachment);

    $soi_ext =  \File::extension('uploads/soi_attachment/'.$customer_details->soi_attachment);
    
    $zakat_ext =  \File::extension('uploads/zakat_certificates/'.$customer_details->zakat_certificate);
    
    $cnic_attachment = $this->get_base64_img('uploads/cnic_attachment/'.$customer_details->cnic_attachment);

    $soi_attachment = $this->get_base64_img('uploads/soi_attachment/'.$customer_details->soi_attachment);

    if($customer_details->zakat_certificate != 'no_image.png'){
      $zakat_certificate = $this->get_base64_img('uploads/zakat_certificates/'.$customer_details->zakat_certificate);

    }
    else{
      $zakat_certificate = '';
    }

   
     
      $arr = array (
        'Sales_Person_ID' => 'sample string 1',
        'Channel' => 'sample string 2',
        'AcTitle' => $customer_details->name,
        'FatherName' => $customer_details->father_name,
        'MotherName' => $customer_details->mother_name,
        'Address' => $customer_details->address,
        'Email' => $customer_details->email,
        'BranchName' => '$bank_details->branch_name',
        'AccountTitle' => '$bank_details->account_title',
        'IBAN' => '$bank_details->iban_number',
        'ZakatEmail' => 'sample string 11',
        'ZakatHOAddress' => 'sample string 12',
        'InstrumentNumber' => '$investment_details->instrument_number',
        'DOB' => $customer_details->dob,
        'CNICIssueDate' => $customer_details->cnic_issue_date,
        'Cell' => $customer_details->cell,
        'PlaceOfBirth' => $customer_details->pob_country,
        'POBCity' => $customer_details->pob_city,
        'Occupation' => $customer_details->occupation,
        'CountryOfResidence' => $customer_details->country1,
        'CORCity' => $customer_details->city1,
        'ResidentNationalOf' => $customer_details->qq,
        'DAOFBankName' => '$bank_details->bank_name',
        'DAOFBankNameInvestment' => 'sample string 24',
        'FundName' => '$investment_details->fund_name',
        'AmountInWords' => '$investment_details->amount_in_words',
        'AmountRs' => '$investment_details->amount',
        'FrontEndLoad' => '$investment_details->front_end_load',
        'PaymentMode' => '$investment_details->payment_mode',
        'Education' => $customer_details->education,
        'FrequencyofAccountStatement' => 'sample string 31',
        'TypeofUnits' => 'sample string 32',
        'AverageAnnualIncome' => $customer_details->average_annual_income,
        'InvestmentAttachment' => $cnic_attachment,
        'InvestmentAttachmentExtension' => 'image/jpeg',
        'ZakatOptions' => $customer_details->zakat_options ? true : false,
        'ZakatAttachment' => $zakat_certificate,
        'ZakatAttachmentExtension' => 'image/'.$zakat_ext,
        'MultipleNationalities' => '$fatca_details->multiple_nat',
        'Nationality1' => 'sample string 38',
        'Nationality2' => 'sample string 39',
        'Nationality3' => 'sample string 40',
        'GreenCard' => '$fatca_details->green_card',
        'TaxResi' => '$fatca_details->tax_resi',
        'ForCiti' => '$fatca_details->for_citi',
        'OverseasMailingAddress' => true,
        'OverseasPhoneNumber' => true,
        'AttorneyAddress' => '$fatca_details->attor_addr',
        'AttorneyAddressInput' => 'sample string 47',
        'TransFund' => '$fatca_details->trans_fund',
        'Wf' => '$fatca_details->wf',
        'WForm' => '$fatca_details->wform',
        'WFormAttachment' => $cnic_attachment,
        'WFormAttachmentExtension' => 'image/jpeg',
        'SourceOfIncome' => $customer_details->soi,
        'SourceofIncomeAttachment' => $soi_attachment,
        'SourceofIncomeAttachmentExtension' => 'image/'.$soi_ext,
        'CNIC' => $customer_details->cnic,
        'CNICAttachment' => $cnic_attachment,
        'CNICAttachmentExtension' => 'image/'.$cnic_ext,
        'OccupationName' => '',
        'BusinessJobCategory' => $customer_details->occ_name,
        'OrganizationBusinessEmployeeName' => $customer_details->org_emp_bes_name,
        'AgeofBusiness' => $customer_details->age_of_business ?? 0,
        'MaritalStatus' => $customer_details->marital_status ?  true : false,
        'PublicFigure' => $customer_details->public_figure ? true : false,
        'RefusedAccountbyInstitute' => $customer_details->refused_account_by_institute ? true : false,
        'HighValueItem' => $customer_details->high_value_item ? true : false,
        'NoofDependants' => $customer_details->no_of_dependants,
      );

// echo "<pre>";
// print_r($arr);
// die;
$curl = curl_init();

curl_setopt_array($curl, array(
CURLOPT_URL => "http://crm-test.hblasset.com:3001/api/dar",
CURLOPT_RETURNTRANSFER => true,
CURLOPT_ENCODING => "",
CURLOPT_MAXREDIRS => 10,
CURLOPT_TIMEOUT => 30000,
CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
CURLOPT_CUSTOMREQUEST => "POST",
CURLOPT_POSTFIELDS => json_encode($arr),
CURLOPT_HTTPHEADER => array(
"content-type: application/json",
),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
echo "cURL Error #:" . $err;
} else {

  return back()->with('msg', json_decode($response));

}


  }

  

  }
