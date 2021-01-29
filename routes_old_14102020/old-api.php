<?php

use Illuminate\Http\Request;


Route::get('generate_leads',function(){

$seller_email = 'raheel.khawer@hblasset.com';	
$num = '000';
$client_cnic = 4210140790685;

$client_name = str_replace(' ','%20','francis gill');
$client_email = 'francisgill1000@gmail.com';
$location = str_replace(' ','%20','test locatioin');
$choosen_fund = str_replace(' ','%20','testing');


$ch = curl_init();

$url = "http://10.6.209.252:5000/service.asmx/CreateLead?OwnerEmail=".$seller_email."&Name=".$client_name."&LeadEmail=".$client_email."&MobileNumber=".$num."&City=".$location."&Fund=".$choosen_fund."&&CNICORNTN=".$client_cnic."";

curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

if(curl_error($ch)){
echo curl_error($ch);
}
else{
echo $data = curl_exec($ch);
// return back()->with('msg','Lead has been pushed to CRM.');
// \DB::table('risks')->where('id',$data->id)->update([
// 'pushed' => 0
// ]);
die;
}


curl_close($ch);
});

    Route::post('auth/login', 'ApiController@login');
    Route::group(['middleware' => 'jwt.auth'], function () {
        Route::get('user', 'ApiController@getAuthUser');
    });


Route::post('/save_risk_profile',function(Request $r){

	$counts = \DB::table('rp_count')->pluck('counts');
	$res = $counts[0];
	if($res > 0){
			\DB::table('rp_count')->where('id','=',1)->update(['counts'=>$res+1]);
	}
	else{
			\DB::table('rp_count')->insert(['counts'=>$res++]);
	}

$args = [
"client_name" => $r->client_name,
"client_email" => $r->client_email,
"client_number" => $r->client_number,
"client_cnic" => $r->client_cnic,
"location" => $r->location,
"choosen_fund" => $r->choosen_fund,
"irf" => $r->irf,
"crf" => $r->crf,
"user_id" => $r->user_id,
"decision" => $r->decision,
'created_at' => now(),
'updated_at' => now(),
];
$success = DB::table('risks')->insert($args);
if($success){
	    return response()->json(200);
}
else{
	return response()->json(404);
}



});

Route::get('/get_data', function () {


	$data  = [
			\DB::table('welcome')->where('id',1)->get(),
			\DB::table('sponsers')->where('id',1)->get(),
			\DB::table('awards')->where('id',1)->get(),
			\DB::table('hamls')->where('id',1)->get(),
			\DB::table('aums1')->where('id',1)->get(),
			\DB::table('aums2')->where('id',1)->get(),
			\DB::table('ytp')->where('id',1)->get(),
			\DB::table('mf')->where('id',1)->get(),
			\DB::table('tomf')->where('id',1)->get(),
			\DB::table('iimf')->where('id',1)->get(),
			\DB::table('aums_1_chart')->where('id',1)->get(),
			\DB::table('aums_2_chart')->where('id',1)->get(),
			get_charts(1,'Deposit Base of Big Five Banks'),
			get_charts(2,'Profit After Tax of Big Five Banks (PKR MILLION)'),
	];


	return json_encode($data,JSON_PRETTY_PRINT);
});

Route::get('/get_cf', function () {
	 funds(10);
});

Route::get('/get_immf', function () {
	 funds(11);
});
Route::get('/get_iif', function () {
	 funds(12);
});

Route::get('/get_mmf', function () {
	 funds(13);
});
Route::get('/get_if', function () {
	 funds(14);
});

Route::get('/get_gsf', function () {
	 funds(15);
});
Route::get('/get_sf', function () {
	 funds(16);
});

Route::get('/get_eqf', function () {
	 funds(17);
});

Route::get('/get_ieqf', function () {
	 funds(18);
});

Route::get('/get_isf', function () {
	 funds(19);
});

Route::get('/get_enf', function () {
	 funds(20);
});

Route::get('/get_iaaf', function () {
	 funds(21);
});

Route::get('/get_maf', function () {
	 funds(22);
});
Route::get('/get_ifpf', function () {
	 another_funds(23);
});
Route::get('/get_fpf', function () {
	 another_funds(24);
});
Route::get('/get_pf', function () {
	 another_funds(25);
});
Route::get('/get_ipf', function () {
	 another_funds(26);
});

function get_charts($id,$title)
{
	$year = \DB::table('sc_yr')->where('chart_id',$id)->pluck('yr')[0]-1;
	$year = $year + 1;
	$chart_data = [];
	$chart_data[]  = ['title' => $title];
	for ($i=0; $i < 6 ; $i++) {
		$chart_data[] = ['years' => $year++];
	}
	foreach(\DB::table('banks')->where('chart_id','=',$id)->get() as $bank){


		$values = \DB::table('sponsor_chart_1')->where('bank_id','=',$bank->id)->get();
		foreach($values as $value){
			$chart_data[] = [
				'banks' => $bank->bank,
				'color' => $bank->bank_color,
				'values' => $value->sc_1_nums
			];

	 }
	}
	return 	$chart_data;

}

function funds($id)
{
	$data  = [
	'fund_title'=> \DB::table('funds')->select('title')->where('id', '=',$id)->get(),
    'fabs'=> \DB::table('features_benefits')->where('fund_id', '=',$id)->get(),
    'fi'=> \DB::table('fi')->where('fund_id', '=',$id)->get(),
    'aa'=> \DB::table('asset_allocation')->where('fund_id', '=',$id)->get(),
    'ia'=> \DB::table('investment_avenues')->where('fund_id', '=',$id)->get(),
    'fr'=>\DB::table('fr')->where('fund_id', '=',$id)->get(),
    'exp'=> \DB::table('exp')->where('fund_id', '=',$id)->get(),
    'charts' => \DB::table('charts')->where('fund_id', '=',$id)->get(),
	];
	echo json_encode($data,JSON_PRETTY_PRINT);
}

function another_funds($id)
{
	$data = [

	'fund_title'=> \DB::table('funds')->select('title')->where('id', '=',$id)->get(),
	'fabs'=> \DB::table('features_benefits')->where('fund_id', '=',$id)->get(),
	'fi1'=> \DB::table('fi1')->where('fund_id', '=',$id)->get(),
	'aa1'=> \DB::table('aa1')->where('fund_id', '=',$id)->get(),
	'ia'=> \DB::table('investment_avenues')->where('fund_id', '=',$id)->get(),
	'fr'=> \DB::table('fr')->where('fund_id', '=',$id)->get(),
	'exp'=> \DB::table('exp')->where('fund_id', '=',$id)->get(),
	'charts' => \DB::table('charts')->where('fund_id', '=',$id)->get(),
	];
	echo json_encode($data,JSON_PRETTY_PRINT);
}
