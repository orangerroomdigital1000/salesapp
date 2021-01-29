<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>:: HBL Corporate Presentation Demo ::</title>

<link href="{{asset('vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
<link href="{{url('css/bootstrap.css')}}" rel='stylesheet' type='text/css' />
<script src="{{url('js/jquery-1.11.1.min.js')}}"></script>
<link rel="stylesheet" href="{{asset('css/fe_style.css')}}">
<link href="{{url('css/select2.min.css')}}" rel="stylesheet" />
<script src="{{url('js/select2.min.js')}}"></script>
<script src="{{url('js/bootstrap.js')}}"> </script>


</head>
<body>


<div id="header" style="    position: fixed;
top: 0;
z-index: 999999999;">
<img src="{{asset('images/header-logo-img.png')}}" alt="">
</div>
<div class="container" style="margin-top: 50px;">
<div class="progress" style="position: fixed;
width: 53%;
z-index: 9999999999;
top: 16px;
left: 71%;
margin-left: -445px;">
<div id="pb" style="background-color: #01a896;" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:0%">

</div>
</div>
<br  >

@if (session()->has('msg'))
<div class="alert alert-success" role="alert">
<strong>Well done!</strong> {{session('msg')}}
</div>
@endif

@if (session()->has('err'))
<div class="alert alert-danger" role="alert">
{{session('err')}}
</div>
@endif


<?php
if(count($errors) > 0){
if(in_array('The Fund Field has a duplicate value.', $errors->all() ) ){ ?>
<div class="alert alert-danger" role="alert">
The Fund Field has a duplicate value.
</div>
<?php } ?>
@foreach($errors->all() as $error)
@if($error != 'The Fund Field has a duplicate value.')
<div class="alert alert-danger" role="alert">
{{$error}}
</div>
@endif

@endforeach
<?php   } ?>

<form  method="post" action="{{url('preview')}}" enctype="multipart/form-data">
{{csrf_field()}}

<div class="form-row">
<div class="col-md-12">

<h2>1. CUSTOMER INFORMATION</h2>
<br>
</div>
<br>
<div class="form-group col-md-4">
<label>Name</label>
<input id="name" required name="name" class="form-control pb" value="{{old('name')}}" >
<p class="name_msg" style="color:red;padding:5px;"></p>
</div>

<div class="form-group col-md-4">
<label>Middle Name</label>
<input id="middle_name" required name="middle_name" class="form-control pb" value="{{old('middle_name')}}" >
<p class="middle_name_msg" style="color:red;padding:5px;"></p>
</div>

<div class="form-group col-md-4">
<label>Last Name</label>
<input id="last_name" required name="last_name" class="form-control pb" value="{{old('last_name')}}" >
<p class="last_name_msg" style="color:red;padding:5px;"></p>
</div>

<div class="form-group col-md-4">
<label>Father Name</label>
<input id="father_name" required name="father_name" class="form-control pb" value="{{old('father_name')}}" >
<p class="father_name_msg" style="color:red;padding:5px;"></p>
</div>

<div class="form-group col-md-4">
<label>Email</label>
<input id="email" type="email"  name="email" class="form-control pb" value="{{old('email')}}" >
<p class="email_msg" style="color:red;padding:5px;"></p>
</div>


<div class="form-group col-md-4">
<label>Date of Birth</label>

<input required id="dob" name="dob" type="date" max="<?php echo date('Y-m-d'); ?>" value="{{old('dob')}}"  class="form-control pb">
<p class="dob_msg" style="color:red;padding:5px;"></p>

</div>


<div class="col-md-12">

<label>Place Of Birth &nbsp&nbsp</label> 
<input required type="radio" class="pb pob_country" name="pob_country" value="pk"> &nbsp Pakistan
&nbsp&nbsp
<input type="radio" class="pb pob_country" name="pob_country" value="o"> &nbsp Other 

<br>
<br>
</div>
<div class="form-group col-md-12 hide_class" id="show_pob_cities">
<label>Cities</label>
<select id="mycities" class="js-example-basic-single  form-control pb" name="pob_city"></select>
</div>

<div class="form-group col-md-12 hide_class" id="show_pob_city">
<label>Country</label>
<input class="form-control pb" name="pob_other_country" >
<br>
<label>City</label>
<input class="form-control pb" name="pob_other_city" >
</div>



<div class="form-group col-md-4">
<label>Mother's Maiden Name</label>

<input required id="mm_name" name="mm_name" value="{{old('mm_name')}}"  class="form-control pb">
<p class="mm_name_msg" style="color:red;padding:5px;"></p>

</div>
<div class="form-group col-md-4">
<label style="font-size: 14px;">CNIC</label>
<input required type="number" id="cnic" name="cnic" placeholder="XXXX-XXXXXXX-X" value="{{old('cnic')}}" class="form-control pb" >
<p class="cnic_msg" style="color:red;padding:5px;"></p>
</div>

<div class="col-md-4">
<label>CNIC Attachments:</label>
<input required name="cnic_file" type="file" style="padding: 3px 5px" class="form-control pb" >
<br>
</div>

<div class="form-group col-md-4">
<label>Mobile Number</label>
<input required type="number" value="{{old('cell')}}" id="cell"  name="cell" class="form-control pb" >
<p class="cell_msg" style="color:red;padding:5px;"></p>
</div>

<!--  -->

<div class="form-group col-md-4">
<label>Occupation</label>
<input required value="{{old('occupation')}}" id="occupation" name="occupation" class="form-control pb" >
<p class="occupation_msg" style="color:red;padding:5px;"></p>
</div>

<div class="form-group col-md-4">
<label>Source Of Income</label>
<input required value="{{old('soi')}}" id="soi" name="soi" class="form-control pb" >
<p class="soi_msg" style="color:red;padding:5px;"></p>
</div>
<div class="col-md-12">

<label class="">Zakat Deduction &nbsp&nbsp </label>
&nbsp(If No please attach affidavit CZ-50) &nbsp&nbsp&nbsp
<input type="radio" class="zak_ded pb" name="zak_ded" value="no">  &nbsp No 
&nbsp&nbsp
<input type="radio" class="zak_ded " name="zak_ded" value="yes"> &nbsp Yes   

<br>
  <input name="zak_file" id="zak_file" required type="file" style="padding: 3px 5px" class="hide_class form-control pb">
</div>
<br>

<div class="col-md-12">

<label>Country &nbsp&nbsp</label> 
<input required type="radio" class="pb resi_country" name="resi_country" value="pk"> &nbsp Pakistan
&nbsp&nbsp
<input type="radio" class="pb resi_country" name="resi_country" value="o"> &nbsp Other 

<br>
<br>
</div>
<div class="form-group col-md-12 hide_class" id="show_resi_cities">
<label>Cities</label>
<select id="mycities_resi" class="js-example-basic-single  form-control pb" name="resi_cities"></select>
</div>

<div class="form-group col-md-12 hide_class" id="show_resi_cc">
<label>Country</label>
<input class="form-control pb" name="resi_other_country" >
<br>
<label>City</label>
<input class="form-control pb" name="resi_other_city" >
</div>



<div class="form-group col-md-12">
  <br>
<label>Address</label>
<textarea required id="address" name="address" class="form-control pb" rows="4" cols="50" placeholder="Describe yourself here...">{{old('address')}}</textarea>
<p class="address_msg" style="color:red;padding:5px;"></p>
</div>



</div>





<div class="form-row">

<div class="col-md-12">
<h2 >2. INVESTMENT DETAILS</h2>
<br>
<label>Please Note: Minimum Initial Investment is Rs. 5,000/- Minimum Subsequent Investment is Rs. 1,000/-</label>
</div>
</div>
<div class="fund2bappend">
<div class="form-row fund_row0">
<div class="col-md-12">
<label>Name of Fund</label>
</div>
<div class="col-md-11">
<select style="height: auto;" required name="funds[]" class="form-control funds fund_name" >
</select>
</div>
<div class="col-md-1"><button type="button" class="rem0 btn btn-primary">X</button></div>
<div class="col-md-5">
<label>Amount (Rs.)</label>
<input autofocus="true" id="fund_amount" required type="number" name="funds[]" class="form-control amount sum"  min="1" max="99999">
<p class="amount_msg" style="color:red;padding:5px;"></p>

</div>
<div class="col-md-6">
<label>Amount in Words</label>
<input id="fund_aiw" required name="funds[]" class="form-control word" >
</div>


<div class="col-md-5">
<label>Payment Mode</label>
<select style="height: auto;" required name="funds[]" class="form-control" >
<option value="ibft:0">IBFT</option>
<option value="Cheque:0">Cheque</option>
<option value="Pay Order:0">Pay Order</option>
<option value="Demand:0">Demand</option>
<option value="Draft:0">Draft</option>
<option value="Real Time Gross Settlement (RTGS):0">Real Time Gross Settlement (RTGS)</option>
</select>
</div>

<div class="col-md-6">
<label>Attachments</label>
<input required name="mop_files[]" type="file" style="padding: 3px 5px" class="form-control">
</div>

<div class="col-md-5">
<br><label>Bank</label>
<input required name="funds[]" style="padding: 3px 5px" class="form-control">
</div>

<div class="col-md-6">
<br><label>Instrument Number</label>
<input required name="funds[]" style="padding: 3px 5px" class="form-control" >
</div>


</div>

</div>



<div class="form-row">
<span id="label" style="color:red; padding:5px;"></span>
<div class="col-md-12">
<p class="fund_msg" style="color:red;padding:5px;"></p>
<button type="button" id="add_fund" class="btn btn-default" name="">Add Fund</button>
&nbsp;&nbsp;&nbsp;
<button type="button" class="add_ins btn btn-primary ">Add Instrument</button>
</div>
</div>

<!-- payment mode -->

<div class="form-row mt-5">

<div class="col-md-12">
<h2 >3. FATCA Checklist</h2>
<br>

<label>For Individual & Joint Account Holders (Please write clearly using BLOCK LETTERS)</label>
<br>
<br>
<p>*if any of the below is selected as "YES" then kindly provide country specific supporting documents with details</p>
<br>

</div>
</div>

<table class="table table-bordered">
<thead class="main_thead">
<tr>
<th scope="col">Particulars</th>
<th scope="col" class="jpmix">Primary Applicant</th>
</tr>
</thead>
<tbody>


<tr>
<td width="50%">Do you have Multiple Nationalities/Passports?</td>
<td>
<label><input  type="radio" class="nat_radio" name="nat_radio" value="yes"> &nbsp;&nbsp; yes </label> 
&nbsp;&nbsp; 
<label><input  type="radio" class="nat_radio" name="nat_radio" value="no"> &nbsp;&nbsp; No </label>

<div id="nats" class="hide_class">
  <label class="form-inline">Nat 1:&nbsp;&nbsp; 
<input type="text" class="form-control" id="Nat11" name="nat[]">
</label> 

<label class="form-inline">Nat 2:&nbsp;&nbsp; 
<input type="text" class="form-control" id="Nat11" name="nat[]">
</label> 

<label class="form-inline">Nat 3:&nbsp;&nbsp; 
<input type="text" class="form-control" id="Nat11" name="nat[]">
</label> 
</div>

</td>
</tr>


<tr>
<td>Do you currently hold US green card or US Permanent Residency?</td>
<td>
<label><input type="radio" class="card_radio" name="card_radio" value="yes"> &nbsp;&nbsp; yes </label> 
&nbsp;&nbsp; 
<label><input type="radio" class="card_radio" name="card_radio" value="no"> &nbsp;&nbsp; No </label>
<label id="card" class="hide_class" class="form-inline hide_class">Card#&nbsp;&nbsp; 
<input type="text" class="form-control"  name="card"></label> 
</td>






</tr>


<tr>
<td>Are you a Tax Resident in the US?</td>
<td>
<label><input type="radio" class="tax_resi" name="tax_resi" value="yes"> &nbsp;&nbsp; yes </label> 
&nbsp;&nbsp; 
<label><input type="radio" class="tax_resi" name="tax_resi" value="no"> &nbsp;&nbsp; No </label>
</td>
</tr>

<tr>
<td>Overseas/Care-of mailing address &amp; Phone No</td>
<td><input type="text" class="form-control" id="overseas_pa" name="overseas_pa">
  <br>
  <input type="text" class="form-control" id="ov_paaaa" name="overseas_paa">
  <br>
  <input type="text" class="form-control" id="ov_paaaa" name="overseas_paa">
  <br>
  <input type="text" class="form-control" id="ov_paaaa" name="overseas_paa"></td>



</tr>

<tr>
<td>Have you renounced your foreign citizenship or residency? </td>
<td>
<label><input type="radio" class="renounced_residency" name="renounced_residency" value="yes"> &nbsp;&nbsp; yes </label> 
&nbsp;&nbsp; 
<label><input type="radio" class="renounced_residency" name="renounced_residency" value="no"> &nbsp;&nbsp; No </label>
</td>
</tr>

<tr>
<td>Have you given Power of Attorney to any 
  <br>
  Person residency overseas?
<p>Please provide Attorney's Address</p>
</td>
<td>
<label><input type="radio" class="resi_in_us" value="yes" name="resi_in_us"> &nbsp;&nbsp; yes </label> 
&nbsp;&nbsp; 
<label><input type="radio" class="resi_in_us" value="no" name="resi_in_us"> &nbsp;&nbsp; No </label>
<br>
<div id="attorney" class="hide_class">
<input type="text" class="form-control" name="attorney[]"> 
<br>
<input type="text" class="form-control" name="attorney[]"> 
<br>
<input type="text" class="form-control" name="attorney[]"> 
<br>
<input type="text" class="form-control" name="attorney[]"> 
</div>
</td>
</tr>
<tr>
<td>Have you given any standing instruction to <br>transfer funds to an account in US?</td>
<td>
<label><input type="radio" class="acc_in_US" value="yes" name="acc_in_US"> &nbsp;&nbsp; yes </label> 
&nbsp;&nbsp; 
<label><input type="radio" class="acc_in_US" value="no" name="acc_in_US"> &nbsp;&nbsp; No </label>
<br>
<div id="attorney" class="hide_class">
<input type="text" class="form-control" name="attorney[]"> 
<br>
</div>
</td>
</tr>
<tr>
<td width="50%">W8BEN/W9 Forms submitteds with date of Submission.</td>
<td>
<label><input type="radio" class="w_form_my" name="w_form" value="yes"> &nbsp;&nbsp; yes </label> 
&nbsp;&nbsp; 
<label><input type="radio" class="w_form_my" name="w_form" value="no"> &nbsp;&nbsp; No </label>

<div id="f_sub" class="hide_class">

<a href="{{url('forms_pdf/W8-Form.pdf')}}" target="_blank">W8</a> (FOR NON US USERS)
<br>
<a href="{{url('forms_pdf/W9-Form.pdf')}}" target="_blank">W9</a> (FOR US USERS)
<br><br>
<input type="file" name="" style="padding: 3px 5px;" class="form-control">
</div>
</td>
</tr>

</tbody>
</table>








<div class="form-row" style="margin-bottom: 50px;">

<div class="col-md-12">
<br>
<h2>DECLARATION</h2>
<br>
<label>1. I/We will not claim repatriation from Pakistan of Dividends and Sale proceeds of the units except as permissible under the Rules of the State Bank of Pakistan or Ministry of Finance, Government of Pakistan. </label>
<br>
<label>2. I/We hereby acknowledge having read and understood the relevant Trust Deed(s) and Offering Documents(s) and guidelines (on the back of this Form) that govern this transaction and further acknowledge having understood the risks involved and I/We agree to abide by the terms and conditions therein. </label>

</div>
<div class="col-md-12">
<div class="bridge"></div>
<!-- <button type="button" data-toggle="modal" data-target="#preview" id="checkout" class="btn btn-primary submit">Submit</button> -->
<button type="submit" class="btn btn-primary submit">Submit</button>
</div>
</div>

</form>
</div>

<footer>
<div class="col-sm-4 weblink">
<img src="{{asset('images/glob-icon.png')}}" alt="">
<p><a href="http://hblasset.com/" target="_blank">www.hblasset.com</a></p>

<p><a class="" href="{{url('/')}}">DashBoard</a></p>
<p><a class="" href="{{url('welcome')}}">Home</a></p>


</div>
<div class="col-sm-4 copyright"><p>©<?php echo date('Y');?> HBL Asset Management.</p></div>
<div class="col-sm-4 social">
<a href="#"><img src="{{asset('images/linkedin-icon.png')}}" alt=""></a>
<a href="#"><img src="{{asset('images/facebook-icon.png')}}" alt=""></a>
<a href="#"><img src="{{asset('images/twitter-icon.png')}}" alt=""></a>
<p> Follow Us On :</p>
<p>  <a href="{{ route('logout') }}"
onclick="event.preventDefault();
document.getElementById('logout-form').submit();">
<i class="fa fa-sign-out"></i>Logout &nbsp;</a>
<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
{{ csrf_field() }}
</form>
</p>
</div>
<div class="check"></div>
<div class="mop_check"></div>

</footer>
<script type="text/javascript" src="{{url('js/amount_to_word.js')}}"></script>
<script type="text/javascript" src="{{url('js/progress_bar.js')}}"></script>
<script type="text/javascript" src="{{url('js/functions.js')}}"></script>
<script type="text/javascript">

$(document).ready(function() {   

    $('.hide_class').hide();  



    $('.resi_country').on( "change", function() {
      show_hide($(this).val(),'pk','#show_resi_cities','#show_resi_cc');    
    });


    $('.pob_country').on( "change", function() {
      show_hide($(this).val(),'pk','#show_pob_cities','#show_pob_city');    
    });

    $('.zak_ded').on( "change", function() {
      yes_no($(this).val(),'no','#zak_file');
    });
    $('.nat_radio').on( "change", function() {
      yes_no($(this).val(),'yes','#nats');
    });

    $('.card_radio').on( "change", function() {
    yes_no($(this).val(),'yes','#attorney');
    });

    $('.resi_in_us').on( "change", function() {
    yes_no($(this).val(),'yes','#attorney');
    });


    $('.w_form_my').change(function() {
    yes_no($(this).val(),'yes','#f_sub');
    });

    



    
    

var fund_titles = <?php echo json_encode($fund_titles);?>;
var fts = [];
for(var ft in fund_titles){
fts.push([fund_titles[ft].id,fund_titles[ft].title]);
}
var funds_array = localStorage.getItem("funds_array");
var funds_ids = JSON.parse(localStorage.getItem("funds_ids"));
if (funds_array != null) {
  fts = fts.filter(ele => {
  return !funds_ids.includes(""+ele[0]);
});
  $.each(fts,function(key,value){
    $('.fund_name').append('<option value="'+value[0]+'">'+value[1]+'</option>');
  }); 
    var fa = JSON.parse(funds_array);
    var i = 100;
  for(f in fa){

    i++;

  $('.fund2bappend').append('<div class="form-row remove fund_row'+i+'"><div class="col-md-11"><label>Name of Fund</label><select style="height:auto;" name="funds[]" class="form-control funds'+i+' fund_name"><option value="'+fa[f][0]+'">'+fa[f][1]+'</option></select></div><div class="col-md-4"><label>Amount (Rs.)</label><input name="funds[]" value="'+fa[f][2]+'" class="form-control sum amount'+i+'"><p class="amount_msg'+i+'" style="color:red;padding:5px;"></p></div><div class="col-md-4"><label>Amount in Words</label><input name="funds[]" value="'+fa[f][3]+'" class="form-control word'+i+'" ></div><div class="col-md-1 form-inline" style="margin-top:4px;"><button type="button" value="'+i+'" class="btn btn-primary rem'+i+'">X</button></div><div class="col-md-5"><label>Payment Mode</label><select style="height: auto;" required name="funds[]" class="form-control" ><option value="ibft:0">IBFT</option><option value="Cheque:0">Cheque</option><option value="Pay Order:0">Pay Order</option><option value="Demand:0">Demand</option><option value="Draft:0">Draft</option><option value="Real Time Gross Settlement (RTGS):0">Real Time Gross Settlement (RTGS)</option></select></div><div class="col-md-6"><label>Attachments</label><input required name="mop_files[]" type="file" style="padding: 3px 5px" class="form-control"></div><div class="col-md-5"><br><label>Bank</label><input required name="funds[]" style="padding: 3px 5px" class="form-control"></div><div class="col-md-6"><br><label>Instrument Number</label><input required name="funds[]" style="padding: 3px 5px" class="form-control" ></div></div>');

  word_converter('amount'+i,'word'+i);
  delItem('.rem'+i,'.fund_row'+i);

  $.each(fts,function(key,value){
    if(value[0] != fa[f][0]){
          $('.funds'+i).append('<option value="'+value[0]+'">'+value[1]+'</option>');
    }

});
}    
}
else{

$.each(fts,function(key,value){
$(    '.fund_name').append('<option value="'+value[0]+'">'+value[1]+'</option>');
});

}


var i = 0;

$('.add_ins').click(function(){
i++;
var html = '<br><div class="form-row remove fund_row'+i+'"><div class="col-md-5"><label>Amount (Rs.)</label><input name="funds[]" class="form-control sum amount'+i+'"><p class="amount_msg'+i+'" style="color:red;padding:5px;"></p></div><div class="col-md-6"><label>Amount in Words</label><input name="funds[]" class="form-control word'+i+'" ></div><div class="col-md-1"><button style="margin-top: 28%;" type="button" class="rem'+i+' btn btn-primary">X</button></div><div class="col-md-5"><label>Payment Mode</label><select style="height: auto;" required name="funds[]" class="form-control" ><option value="ibft:0">IBFT</option><option value="Cheque:0">Cheque</option><option value="Pay Order:0">Pay Order</option><option value="Demand:0">Demand</option><option value="Draft:0">Draft</option><option value="Real Time Gross Settlement (RTGS):0">Real Time Gross Settlement (RTGS)</option></select></div><div class="col-md-6"><label>Attachments</label><input required name="mop_files[]" type="file" style="padding: 3px 5px" class="form-control"></div><div class="col-md-5"><br><label>Bank</label><input required name="funds[]" style="padding: 3px 5px" class="form-control"></div><div class="col-md-6"><br><label>Instrument Number</label><input required name="funds[]" style="padding: 3px 5px" class="form-control" ></div></div></div>';
$('.fund2bappend').append(html);  
});
$('#add_fund').click(function(){
i++;
var html = '<br><div class="form-row remove fund_row'+i+'"><div class="col-md-12"><label>Name of Fund</label></div><div class="col-md-11"><select style="height:auto;" name="funds[]" class="form-control funds'+i+' fund_name"></select></div><div class="col-md-1"><button type="button" class="rem0 btn btn-primary">X</button></div><div class="col-md-5"><label>Amount (Rs.)</label><input name="funds[]" class="form-control sum amount'+i+'"><p class="amount_msg'+i+'" style="color:red;padding:5px;"></p></div><div class="col-md-6"><label>Amount in Words</label><input name="funds[]" class="form-control word'+i+'" ></div><div class="col-md-5"><label>Payment Mode</label><select style="height: auto;" required name="funds[]" class="form-control" ><option value="ibft:0">IBFT</option><option value="Cheque:0">Cheque</option><option value="Pay Order:0">Pay Order</option><option value="Demand:0">Demand</option><option value="Draft:0">Draft</option><option value="Real Time Gross Settlement (RTGS):0">Real Time Gross Settlement (RTGS)</option></select></div><div class="col-md-6"><label>Attachments</label><input required name="mop_files[]" type="file" style="padding: 3px 5px" class="form-control"></div><div class="col-md-5"><br><label>Bank</label><input required name="funds[]" style="padding: 3px 5px" class="form-control"></div><div class="col-md-6"><br><label>Instrument Number</label><input required name="funds[]" style="padding: 3px 5px" class="form-control" ></div></div></div>';
$('.fund2bappend').append(html);


checkit('sum','amount_msg' + i);

if(i == 1){
fts = $.grep(fts, function(n) {
return n[0] !== parseInt($('.fund_name').val());

});
}

$('.fund_name').trigger('select');
$('.fund_name').select(function(){
var current = $(this).val();
fts = $.grep(fts, function(n) {
return n[0] !== parseInt(current);
});

});

$.each(fts,function(key,value){
$('.funds' + i).append('<option value="'+value[0]+'">'+value[1]+'</option>');  
});

word_converter('amount'+i,'word'+i);
$('.rem'+i).click(function(){
localStorage.setItem('id',this.value);
var get_id = localStorage.getItem('id');
$('.check').trigger('click');

});
;



});

});


// $('#name').val('FRANCIS');
// $('#father_name').val('EJAZ');
// $('#email').val('francisgill42@gmail.com');
// $('#dob').val('2018-12-31');
// $('#cnic').val(4210140790685);
// $('#cell').val(03108559858);
// $('#occupation').val('DEV');
// $('#soi').val('SALARY');
// $('#address').val('TESTING ADDRESS');



</script>

</body>
</html>
