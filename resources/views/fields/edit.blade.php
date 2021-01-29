@extends('layouts.admin-app')

@section('content')
<!-- main content start-->
<style type="text/css">
input[type='checkbox'] {
-webkit-appearance:none;
width:30px;
height:30px;
background:white;
border-radius:5px;
border:2px solid #555;
}
input[type='checkbox']:checked {
background: #abd;
}
</style>
<div id="page-wrapper">
<div class="main-page">

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

<br>
<div class="form-title">
<h4 style="color:white;">Form Id # {{$form_id}}
<button type="button" class="btn btn-success" style="float:right;margin-top:-5px;" data-toggle="modal" data-target="#myModal">Discussion</button>

</h4>
</div>


<div class="tables">
<div class="panel-body widget-shadow">

<form method="POST" action="{{url('fields/'.$form_id)}}" enctype="multipart/form-data" class="form-horizontal">
{{csrf_field()}}
<input name="_method" type="hidden" value="PUT">

<table class="table">
<tbody>
<button type="submit" class="btn btn-info" style="float:right;margin:0px;">Submit</button>
{{csrf_field()}}

<br>
<strong>Add Special Note</strong>
<br>
<textarea required name="msg" class="form-control" rows="4"></textarea>
<br>
@if($cds_new)
<h4 class="alert alert-success">Customer Details</h4>
@foreach($cds_new as $cdn)
@empty(!$cdn[1])
<tr>
<th>{{$cdn[0]}}</th>
<td>
@php
$ext = pathinfo($cdn[1], PATHINFO_EXTENSION);
@endphp
@if($ext == 'jpg' || $ext == 'jpeg' || $ext == 'png' || $ext == 'PNG')


@if($cdn[0] == 'cnic_attachment')


<input type="file" name="{{$cdn[0]}}">
<br>
<button type="button" style="background: none; border:none;" value="{{$cdn[1]}}" class="pop" id="cnic_attachment">

<img width="150px" height="150px" src="{{url('uploads/cnic_attachment')}}/{{$cdn[1]}}">  


</button>
@endif

@if($cdn[0] == 'soi_attachment')
<input type="file" name="{{$cdn[0]}}">
<br>
<button type="button" style="background: none; border:none;" value="{{$cdn[1]}}" class="pop" id="soi_attachment">

<img width="150px" height="150px" src="{{url('uploads/soi_attachment')}}/{{$cdn[1]}}">  

</button>

@endif


@if($cdn[0] == 'zakat_certificate')
<input type="file" name="{{$cdn[0]}}">
<br>
<button type="button" style="background: none; border:none;" value="{{$cdn[1]}}" class="pop" id="zk">

<img width="150px" height="150px" src="{{url('uploads/zakat_certificates')}}/{{$cdn[1]}}">  

</button>

@endif

@elseif($cdn[0] == 'average_annual_income')

<input type="hidden" id="ai_val" value="{{$cdn[1]}}">
<input type="hidden" id="ai_id" name="cd[average_annual_income_id]" value="">
<input type="hidden" id="ai_value" name="cd[{{$cdn[0]}}]" value="">
<select id="ai" class="form-control">
</select>

@elseif($cdn[0] == 'occupation')
<input type="hidden" id="occ_val" value="{{$cdn[1]}}">
<input type="hidden" id="occ_id" name="cd[occupation_id]" value="">
<input type="hidden" id="occ_value" name="cd[{{$cdn[0]}}]" value="">
<select id="occ" class="form-control">
</select>

@elseif($cdn[0] == 'education')
@if(in_array($cdn[1], ["Undergraduate","Graduade", "Postgraduate", "Professional"]))
<select name="cd[{{$cdn[0]}}]" class="form-control">
<option value="Undergraduate">Undergraduate</option>
<option value="Graduate">Graduade</option>  
<option value="Postgraduate">Postgraduate</option>
<option value="Professional">Professional</option>  
</select>
@else
<input class="form-control" name="cd[{{$cdn[0]}}]" value="{{$cdn[1]}}">
@endif

@elseif($cdn[0] == 'marital_status')

<input @if($cdn[1] == 'Single') checked @endisset value="Single" type="radio" name="cd[{{$cdn[0]}}]"> &nbsp; Single &nbsp;&nbsp; 
<input @if($cdn[1] == 'Married') checked @endisset value="Married" type="radio" name="cd[{{$cdn[0]}}]"> &nbsp; Married &nbsp;&nbsp; 

@elseif($cdn[0] == 'public_figure')

<input @if($cdn[1] == 'yes') checked @endisset value="yes" type="radio" name="cd[{{$cdn[0]}}]"> &nbsp; yes &nbsp;&nbsp; 
<input @if($cdn[1] == 'no') checked @endisset value="no" type="radio" name="cd[{{$cdn[0]}}]"> &nbsp; no &nbsp;&nbsp; 

@elseif($cdn[0] == 'dob' || $cdn[0] == 'cnic_issue_date')
<input class="form-control" value="{{$cdn[1]}}" type="date" name="cd[{{$cdn[0]}}]"> 

@elseif($cdn[0] == 'zakat')
<input @if($cdn[1] == 'yes') checked @endisset value="yes" type="radio" name="cd[{{$cdn[0]}}]"> &nbsp; yes &nbsp;&nbsp; 
<input @if($cdn[1] == 'no') checked @endisset value="no" type="radio" name="cd[{{$cdn[0]}}]"> &nbsp; no &nbsp;&nbsp; 

@elseif($cdn[0] == 'zakat_options')

<input @if($cdn[1] == 'file') checked @endisset value="file" type="radio" name="cd[{{$cdn[0]}}]"> &nbsp; file &nbsp;&nbsp; 

<input @if($cdn[1] == 'email') checked @endisset value="email" type="radio" name="cd[{{$cdn[0]}}]"> &nbsp; email &nbsp;&nbsp;

<input @if($cdn[1] == 'courier') checked @endisset value="courier" type="radio" name="cd[{{$cdn[0]}}]"> &nbsp; courier &nbsp;&nbsp;

@elseif($cdn[0] == 'pob_country')
<input type="hidden" id="pob_country_val" value="{{$cdn[1]}}">
<input type="hidden" id="pob_country_id" name="cd[pob_country_id]" value="">
<input type="hidden" id="pob_country_value" name="cd[{{$cdn[0]}}]" value="">
<select id="pob_country" class="form-control">
</select>

@elseif($cdn[0] == 'pob_city')
<input type="hidden" id="pob_city_val" value="{{$cdn[1]}}">
<input type="hidden" id="pob_city_id" name="cd[pob_city_id]" value="">
<input type="hidden" id="pob_city_value" name="cd[{{$cdn[0]}}]" value="">
<select id="pob_city" class="form-control">
</select>

@elseif($cdn[0] == 'country1')
<input type="hidden" id="country1_val" value="{{$cdn[1]}}">
<input type="hidden" id="country1_id" name="cd[country1_id]" value="">
<input type="hidden" id="country1_value" name="cd[{{$cdn[0]}}]" value="">
<select id="country1" class="form-control">
</select>

@elseif($cdn[0] == 'city1')
<input type="hidden" id="city1_val" value="{{$cdn[1]}}">
<input type="hidden" id="city1_id" name="cd[city1_id]" value="">
<input type="hidden" id="city1_value" name="cd[{{$cdn[0]}}]" value="">
<select id="city1" class="form-control">
</select>
@elseif($cdn[0] == 'soi')

<input type="hidden" id="soi_val" value="{{$cdn[1]}}">
<input type="hidden" id="soi_id" name="cd[soi_id]" value="">
<input type="hidden" id="soi_value" name="cd[{{$cdn[0]}}]" value="">
<select id="soi" class="form-control">
</select>

@else
<input class="form-control" type="text" name="cd[{{$cdn[0]}}]" value="{{$cdn[1]}}">
@endif
</td>
</tr>

@endempty
@endforeach  
@endif
</tbody>
</table>



@if($bds_new)
<table class="table">
<tbody>

<br>
<h4 class="alert alert-success">Bank Details</h4>
@foreach($bds_new as $cdn)

@if($cdn[0] == 'bank_name')
<tr>
<th>{{$cdn[0]}}</th>
<td>
  <input type="hidden" id="bank_val" value="{{$cdn[1]}}">
  <input type="hidden" id="bank_id" name="bd[bank_name_id]" value="">
  <input type="hidden" id="bank_value" name="bd[{{$cdn[0]}}]" value="">
  <select id="bank" class="form-control">
  </select>
</td>
</tr>

@elseif($cdn[0] == 'branch_name')
<tr>
<th>{{$cdn[0]}}</th>
<td>
  <input type="hidden" id="branch_val" value="{{$cdn[1]}}">
  <input type="hidden" id="branch_id" name="bd[branch_name_id]" value="">
  <input type="hidden" id="branch_value" name="bd[{{$cdn[0]}}]" value="">
  <select id="branch" class="form-control">
</td>
</tr>

@else
<tr>
<th>{{$cdn[0]}}</th>
<td><input class="form-control" type="text" name="bd[{{$cdn[0]}}]" value="{{$cdn[1]}}"></td>
</tr>

@endif
@endforeach

</tbody>
</table>
@endif

@if($ids_new)
<table class="table">
<tbody>

<br>
<h4 class="alert alert-success">Investment Details</h4>
@foreach($ids_new as $cdn)

@if($cdn[0] == 'attachment')
<tr>
<th>{{$cdn[0]}}</th>


<!-- <td><input class="form-control" type="text" name="{{$cdn[0]}}" value="{{$cdn[1]}}"></td> -->
<td>
<input type="file" name="{{$cdn[0]}}" id="">
<br>
<button type="button" style="background: none; border:none;" value="{{$cdn[1]}}" class="pop">
<img width="150px" height="150px" src="{{url('uploads/investment_detail_attachments')}}/{{$cdn[1]}}">  
</button>
</td>

</tr>

@elseif($cdn[0] == 'fund_name')
<tr>
<th>{{$cdn[0]}}</th>
<td>
<input type="hidden" id="fname_val" value="{{$cdn[1]}}">
  <input type="hidden" id="fname_id" name="ids[fund_name_id]" value="">
  <input type="hidden" id="fname_value" name="ids[{{$cdn[0]}}]" value="">
  <select id="fname" class="form-control">
  </select>
</td>
</tr>
@elseif($cdn[0] == 'payment_mode')
<tr>
<th>{{$cdn[0]}}</th>
<td>
<select class="form-control" name="ids[{{$cdn[0]}}]">
<option value="IBFT">IBFT</option>
<option value="Cheque">Cheque</option>
<option value="Pay Oder">Pay Oder</option>
<option value="Demand Draft">Demand Draft</option>
<option value="Real Time Gross Settlement (RTGS)">Real Time Gross Settlement (RTGS)</option>
</select>
</td>
</tr>

@elseif($cdn[0] == 'bank_name')
<tr>
<th>{{$cdn[0]}}</th>
<td>
  <input type="hidden" id="ibank_val" value="{{$cdn[1]}}">
  <input type="hidden" id="ibank_id" name="ids[bank_name_id]" value="">
  <input type="hidden" id="ibank_value" name="ids[{{$cdn[0]}}]" value="">
  <select id="ibank" class="form-control">
  </select>
</td>
</tr>

@elseif($cdn[0] == 'amount' || $cdn[0] == 'instrument_number')
<tr>
<th>{{$cdn[0]}}</th>
<td><input class="form-control" type="text" name="ids[{{$cdn[0]}}]" value="{{$cdn[1]}}"></td>
</tr>

@endif


@endforeach

</tbody>
</table>
@endif

@if($ods_new)
<table class="table">
<tbody>

<br>
<h4 class="alert alert-success">Other Details</h4>
@foreach($ods_new as $cdn)


@if($cdn[0] == 'asf')
<tr>
<th>Frequency of Account Statement</th>
<td>
  <input type="hidden" id="asf_val" value="{{$cdn[1]}}">
  <input type="hidden" id="asf_id" name="od[asf_id]" value="">
  <input type="hidden" id="asf_value" name="od[{{$cdn[0]}}]" value="">
  <select id="asf" class="form-control">
  </select>
</td>
</tr>



@elseif($cdn[0] == 'dpo')
<tr>
<th>Dividend pay-out</th>
<td>
<span>{{$cdn[1]}}</span>
<!-- <input class="form-control" type="text" name="od[{{$cdn[0]}}]" value="{{$cdn[1]}}"> -->
<select class="form-control" name="od[{{$cdn[0]}}]" value="{{$cdn[1]}}">
<option value="Cash">Cash</option>
<option value="Reinvestment">Reinvestment (Net of applicable taxes)</option>
</select>
</td>
</tr>

@else
<tr>
<th>{{$cdn[0]}}</th>
<td>
<input disabled class="form-control" type="text" name="od[{{$cdn[0]}}]" value="{{$cdn[1]}}">
</td>
</tr>

@endif
@endforeach

</tbody>
</table>
@endif

@if($fds_new)
<table class="table">
<tbody>

<br>
<h4 class="alert alert-success">Fatca Details</h4>
@foreach($fds_new as $cdn)

@php
$ext = pathinfo($cdn[1], PATHINFO_EXTENSION);
@endphp

@if($cdn[0] == 'multiple_nat')
<tr>
<th>{{$cdn[0]}}</th>
<td>
<input @if($cdn[1] == 'yes') checked @endisset value="yes" type="radio" name="fd[{{$cdn[0]}}]"> &nbsp; yes &nbsp;&nbsp; 
<input @if($cdn[1] == 'no') checked @endisset value="no" type="radio" name="fd[{{$cdn[0]}}]"> &nbsp; no &nbsp;&nbsp; 
</td>
</tr>

@elseif($ext == 'pdf')
<tr>
<th>
{{$cdn[0]}}
</th>
<td>
<a target="_blank" href="{{url('uploads/wforms')}}/{{$cdn[1]}}">view pdf</a>
<br>
<br>
<input type="file" name="{{$cdn[0]}}">
</td>
</tr>

@elseif($cdn[0] == 'green_card')
<tr>
<th>{{$cdn[0]}}</th>
<td>
<input @if($cdn[1] == 'yes') checked @endisset value="yes" type="radio" name="fd[{{$cdn[0]}}]"> &nbsp; yes &nbsp;&nbsp; 
<input @if($cdn[1] == 'no') checked @endisset value="no" type="radio" name="fd[{{$cdn[0]}}]"> &nbsp; no &nbsp;&nbsp; 
</td>
</tr>

@elseif($cdn[0] == 'for_citi')
<tr>
<th>{{$cdn[0]}}</th>
<td>
<input @if($cdn[1] == 'yes') checked @endisset value="yes" type="radio" name="fd[{{$cdn[0]}}]"> &nbsp; yes &nbsp;&nbsp; 
<input @if($cdn[1] == 'no') checked @endisset value="no" type="radio" name="fd[{{$cdn[0]}}]"> &nbsp; no &nbsp;&nbsp; 
</td>
</tr>

@elseif($cdn[0] == 'attor')
<tr>
<th>{{$cdn[0]}}</th>
<td>
<input @if($cdn[1] == 'yes') checked @endisset value="yes" type="radio" name="fd[{{$cdn[0]}}]"> &nbsp; yes &nbsp;&nbsp; 
<input @if($cdn[1] == 'no') checked @endisset value="no" type="radio" name="fd[{{$cdn[0]}}]"> &nbsp; no &nbsp;&nbsp; 
</td>
</tr>
@elseif($cdn[0] == 'trans_fund')
<tr>
<th>{{$cdn[0]}}</th>
<td>

<input @if($cdn[1] == 'yes') checked @endisset value="yes" type="radio" name="fd[{{$cdn[0]}}]"> &nbsp; yes &nbsp;&nbsp; 
<input @if($cdn[1] == 'no') checked @endisset value="no" type="radio" name="fd[{{$cdn[0]}}]"> &nbsp; no &nbsp;&nbsp; 

</td>
</tr>

@elseif($cdn[0] == 'wf')
<tr>
<th>{{$cdn[0]}}</th>
<td>
<input @if($cdn[1] == 'yes') checked @endisset value="yes" type="radio" name="fd[{{$cdn[0]}}]"> &nbsp; yes &nbsp;&nbsp; 
<input @if($cdn[1] == 'no') checked @endisset value="no" type="radio" name="fd[{{$cdn[0]}}]"> &nbsp; no &nbsp;&nbsp; 
</td>

</tr>

@else
<tr>
<th>{{$cdn[0]}}</th>
<td>

<input class="form-control" type="text" name="fd[{{$cdn[0]}}]" value="{{$cdn[1]}}">
</td>
</tr>

@endif

@endforeach

</tbody>
</table>
@endif

</form>
<!-- Modal -->
</div>

</div>

<div class="clearfix"> </div>


</div>
</div>

<!-- Creates the bootstrap modal where the image will appear -->
<div class="modal fade" id="imagemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
<h4 class="modal-title" id="myModalLabel">Image preview</h4>
</div>
<div class="modal-body">
<img src="" id="imagepreview" style="width: 100%; height: auto;" >
</div>
<div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
</div>
</div>
</div>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
<div class="modal-dialog">



<div class="container">
<div class="row">
<div class="col-md-5">
<div class="panel">
<div class="panel-heading">
<span class="glyphicon glyphicon-comment"></span> Chat
<button type="button" class="close" data-dismiss="modal">&times;</button>
<hr>

</div>
<div class="panel-body">
<ul class="chat">

@foreach($msgs as $msg)
@php 
$role = \DB::table('users')->where('id',$msg->sender_id)->pluck('role_id')[0]; 
$string = ($role == 5) ? 'CBC' : 'S';
@endphp
@if($role == 1 || $role == 5)

<li class="left clearfix" style="list-style-type: none;"><span class="chat-img pull-left">
<img src="http://placehold.it/50/55C1E7/fff&text={{$string}}" alt="User Avatar" class="img-circle" />
</span>
<div class="chat-body clearfix">
<div class="header">
<strong style="margin-left:7px;">{{DB::table('users')->where('id',$msg->sender_id)->first()->name}}</strong>
</div>
<p style="padding-left: 14%;     margin-bottom: 10%;">
{{$msg->msg}}
<br>
@php $d = new DateTime($msg->created_at);
$dates = $d->format('M d, h:i:sa');
@endphp
{{$dates}}
</p>
</div>
</li>
@else
@php
$role = \DB::table('users')->where('id',$msg->sender_id)->pluck('role_id')[0];
$string = ($role == 3) ? 'RA' : 'R';
@endphp
@if($role != 5)

<li class="right clearfix" style="list-style-type: none;"><span class="chat-img pull-right">
<img src="http://placehold.it/50/FA6F57/fff&text={{$string}}" alt="User Avatar" class="img-circle" />
</span>
<div class="chat-body clearfix">
<div class="header text-right">
<strong style="margin-left:7px;">{{DB::table('users')->where('id',$msg->sender_id)->first()->name}}</strong>
</div>
<p style="padding-right: 2%; float:right;    margin-bottom: 10%;">
{{$msg->msg}}
<br>
@php $d = new DateTime($msg->created_at);
$dates = $d->format('M d, h:i:sa');
@endphp
{{$dates}}
</p>
</div>
</li>
@endif
@endif
@endforeach


</ul>
</div>

</div>
</div>
</div>
</div>


</div>
</div>

<script type="text/javascript">

$("#zk").on("click", function() {
var value = this.value;
var url = '<?php echo url('uploads/zakat_certificates/');?>';
$('#imagepreview').attr('src',url+'/'+value);
$('#imagemodal').modal('show');
});


$("#cnic_attachment").on("click", function() {
var value = this.value;
var url = '<?php echo url('uploads/cnic_attachment/');?>';
$('#imagepreview').attr('src',url+'/'+value);
$('#imagemodal').modal('show');
});


$("#soi_attachment").on("click", function() {
var value = this.value;
var url = '<?php echo url('uploads/soi_attachment/');?>';
$('#imagepreview').attr('src',url+'/'+value);
$('#imagemodal').modal('show');
});



var th = ['', 'thousand', 'million', 'billion', 'trillion'];
var dg = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'];
var tn = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'];
var tw = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];
$('#amount').keyup(function(){
var amount = document.getElementById("amount").value;
var s = amount;

s = s.replace(/[\, ]/g, '');
if (s != parseFloat(s)) return 'not a number';
var x = s.indexOf('.');
var fulllength=s.length;

if (x == -1) x = s.length;
if (x > 15) return 'too big';
var startpos=fulllength-(fulllength-x-1);
var n = s.split('');

var str = '';
var str1 = ''; //i added another word called cent
var sk = 0;
for (var i = 0; i < x; i++) {
if ((x - i) % 3 == 2) {
if (n[i] == '1') {
str += tn[Number(n[i + 1])] + ' ';
i++;
sk = 1;
} else if (n[i] != 0) {
str += tw[n[i] - 2] + ' ';

sk = 1;
}
} else if (n[i] != 0) {
str += dg[n[i]] + ' ';
if ((x - i) % 3 == 0) str += 'hundred ';
sk = 1;
}
if ((x - i) % 3 == 1) {
if (sk) str += th[(x - i - 1) / 3] + ' ';
sk = 0;
}
}
if (x != s.length) {

str += 'and '; //i change the word point to and 
str1 += 'cents '; //i added another word called cent
//for (var i = x + 1; i < y; i++) str += dg[n[i]] + ' ' ;
var j=startpos;

for (var i = j; i < fulllength; i++) {

if ((fulllength - i) % 3 == 2) {
if (n[i] == '1') {
str += tn[Number(n[i + 1])] + ' ';
i++;
sk = 1;
} else if (n[i] != 0) {
str += tw[n[i] - 2] + ' ';

sk = 1;
}
} else if (n[i] != 0) {

str += dg[n[i]] + ' ';
if ((fulllength - i) % 3 == 0) str += 'hundred ';
sk = 1;
}
if ((fulllength - i) % 3 == 1) {

if (sk) str += th[(fulllength - i - 1) / 3] + ' ';
sk = 0;
}
}
}
var result = str.replace(/\s+/g, ' ') + str1 + 'only';

$('#aiw').text(result);
$('#aiw_value').val(result);

});
var occ_val = $('#occ_val').val();
var ai_val = $('#ai_val').val();
var soi_val = $('#soi_val').val();
var bank_val = $('#bank_val').val();
var branch_val = $('#branch_val').val();
var ibank_val = $('#ibank_val').val();
var fname_val = $('#fname_val').val();
var asf_val = $('#asf_val').val();
var pob_country_val = $('#pob_country_val').val();
var pob_city_val = $('#pob_city_val').val();
var city1_val = $('#city1_val').val();
var country1_val = $('#country1_val').val();
var city_data;
var city_data1;
var city1_data;
var city1_data1;
var branch_data;
var branch_data1;
setTimeout(function(){
  
/* Occupation */  
  occ_data.forEach(function(v){
    if(v.GEN_NAME.trim() == occ_val){
      $('#occ').append(`<option value='${v.GEN_ID}' selected>${v.GEN_NAME}</option>`);
      $('#occ_id').val($('#occ option:selected').val());
      $('#occ_value').val($('#occ option:selected').text());
    }
    else{
      $('#occ').append(`<option value='${v.GEN_ID}'>${v.GEN_NAME}</option>`);
    }     
  });

/* Annual Income */
income_data.forEach(function(a){
    if(a.GEN_NAME.trim() == ai_val){
      $('#ai').append(`<option value='${a.GEN_ID}' selected>${a.GEN_NAME}</option>`);
      $('#ai_id').val($('#ai option:selected').val());
      $('#ai_value').val($('#ai option:selected').text());
    }
    else{
      $('#ai').append(`<option value='${a.GEN_ID}'>${a.GEN_NAME}</option>`);
    }      
  });


/* Source of Income */
soi_data.forEach(function(soi){
    if(soi.GEN_NAME.trim() == soi_val){
      $('#soi').append(`<option value='${soi.GEN_ID}' selected>${soi.GEN_NAME}</option>`);
      $('#soi_id').val($('#soi option:selected').val());
      $('#soi_value').val($('#soi option:selected').text());
    }
    else{
      $('#soi').append(`<option value='${soi.GEN_ID}'>${soi.GEN_NAME}</option>`);
    }      
  });


/* Bank Name */  
bank_data.forEach(function(bnk){
    if(bnk.BNK_SHORTNAME.trim() == bank_val){
      $('#bank').append(`<option value='${bnk.BNK_ID}' selected>${bnk.BNK_SHORTNAME}</option>`);
      $('#bank_id').val($('#bank option:selected').val());
      $('#bank_value').val($('#bank option:selected').text());
    }
    else{
      $('#bank').append(`<option value='${bnk.BNK_ID}'>${bnk.BNK_SHORTNAME}</option>`);
    }    
    
    if(bnk.BNK_SHORTNAME.trim() == ibank_val){
      $('#ibank').append(`<option value='${bnk.BNK_ID}' selected>${bnk.BNK_SHORTNAME}</option>`);
      $('#ibank_id').val($('#ibank option:selected').val());
      $('#ibank_value').val($('#ibank option:selected').text());
    }
    else{
      $('#ibank').append(`<option value='${bnk.BNK_ID}'>${bnk.BNK_SHORTNAME}</option>`);
    } 

  });  


/* Branch Name */ 
var bank_code = $('#bank_id').val();

var settings = {
  "url": "https://daofservice.hblasset.com/DigitalAccountOpenTillVerify.asmx?op=GetBankBranchByBankID",
  "method": "POST",
  "timeout": 0,
  "headers": {
    "Content-Type": "text/xml"
  },
  "data": `<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<soap12:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\">\r\n  <soap12:Body>\r\n    <GetBankBranchByBankID xmlns=\"http://tempuri.org/\">\r\n      <BankID>${bank_code}</BankID>\r\n    </GetBankBranchByBankID>\r\n  </soap12:Body>\r\n</soap12:Envelope>`,
};

$.ajax(settings).done(function (branch) {
  branch_data = JSON.parse(branch.getElementsByTagName('GetBankBranchByBankIDResult')[0].textContent).Table;
  branch_data.forEach(function(brnh){
      if(brnh.BBR_NAME.trim() == branch_val){
        $('#branch').append(`<option value='${brnh.BBR_ID}' selected>${brnh.BBR_NAME}</option>`);
        $('#branch_id').val($('#branch option:selected').val());
        $('#branch_value').val($('#branch option:selected').text());
      }
      else{
        $('#branch').append(`<option value='${brnh.BBR_ID}'>${brnh.BBR_NAME}</option>`);
      }
  
    }); 
});



/* Fund Name */
fund_data.forEach(function(fund){
    if(fund.PRD_NAME.trim() == fname_val){
      $('#fname').append(`<option value='${fund.PRD_PRODUCTCODE}' selected>${fund.PRD_NAME}</option>`);
      $('#fname_id').val($('#fname option:selected').val());
      $('#fname_value').val($('#fname option:selected').text());
    }
    else{
      $('#fname').append(`<option value='${fund.PRD_PRODUCTCODE}'>${fund.PRD_NAME}</option>`);
    }      
  });


/* Account Summary Frequency */
asf_data.forEach(function(asf){
    if(asf.GEN_NAME.trim() == asf_val){
      $('#asf').append(`<option value='${asf.GEN_ID}' selected>${asf.GEN_NAME}</option>`);
      $('#asf_id').val($('#asf option:selected').val());
      $('#asf_value').val($('#asf option:selected').text());
    }
    else{
      $('#asf').append(`<option value='${asf.GEN_ID}'>${asf.GEN_NAME}</option>`);
    }      
  });  


/* Country */
country_data.forEach(function(country){
    if(country.CNT_OFFICALNAME.trim() == pob_country_val){
      $('#pob_country').append(`<option value='${country.CNT_COUNTRYCODE}' selected>${country.CNT_OFFICALNAME}</option>`);
      $('#pob_country_id').val($('#pob_country option:selected').val());
      $('#pob_country_value').val($('#pob_country option:selected').text());
    }
    else{
      $('#pob_country').append(`<option value='${country.CNT_COUNTRYCODE}'>${country.CNT_OFFICALNAME}</option>`);
    }  
    
    
    if(country.CNT_OFFICALNAME.trim() == country1_val){
      $('#country1').append(`<option value='${country.CNT_COUNTRYCODE}' selected>${country.CNT_OFFICALNAME}</option>`);
      $('#country1_id').val($('#country1 option:selected').val());
      $('#country1_value').val($('#country1 option:selected').text());
    }
    else{
      $('#country1').append(`<option value='${country.CNT_COUNTRYCODE}'>${country.CNT_OFFICALNAME}</option>`);
    }  

  });


/* pob city */  
  var pob_country_code = $('#pob_country_id').val();

  var settings = {
  "url": "https://daofservice.hblasset.com/DigitalAccountOpenTillVerify.asmx?op=getCityCodeByCountryID",
  "method": "POST",
  "timeout": 0,
  "headers": {
    "Content-Type": "text/xml"
  },
  "data": `<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<soap12:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\">\r\n<soap12:Body>\r\n<getCityCodeByCountryID xmlns=\"http://tempuri.org/\">\r\n<CountryCode>${pob_country_code}</CountryCode>\r\n</getCityCodeByCountryID>\r\n</soap12:Body>\r\n</soap12:Envelope>`,
};

$.ajax(settings).done(function (city) {
  city_data = JSON.parse(city.getElementsByTagName('getCityCodeByCountryIDResult')[0].textContent).Table;
  city_data.forEach(function(pobcity){
    if(pobcity.CTY_FULLNAME.trim() == pob_city_val){
      $('#pob_city').append(`<option value='${pobcity.CTY_CITYCODE}' selected>${pobcity.CTY_FULLNAME}</option>`);
      $('#pob_city_id').val($('#pob_city option:selected').val());
      $('#pob_city_value').val($('#pob_city option:selected').text());
    }
    else{
      $('#pob_city').append(`<option value='${pobcity.CTY_CITYCODE}'>${pobcity.CTY_FULLNAME}</option>`);
    }
  });
});

/* city1 */
var country1_code = $('#country1_id').val();

  var settings = {
  "url": "https://daofservice.hblasset.com/DigitalAccountOpenTillVerify.asmx?op=getCityCodeByCountryID",
  "method": "POST",
  "timeout": 0,
  "headers": {
    "Content-Type": "text/xml"
  },
  "data": `<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<soap12:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\">\r\n<soap12:Body>\r\n<getCityCodeByCountryID xmlns=\"http://tempuri.org/\">\r\n<CountryCode>${country1_code}</CountryCode>\r\n</getCityCodeByCountryID>\r\n</soap12:Body>\r\n</soap12:Envelope>`,
};

$.ajax(settings).done(function (city_1) {
  city1_data = JSON.parse(city_1.getElementsByTagName('getCityCodeByCountryIDResult')[0].textContent).Table;
  city1_data.forEach(function(city1){
    if(city1.CTY_FULLNAME.trim() == city1_val){
      $('#city1').append(`<option value='${city1.CTY_CITYCODE}' selected>${city1.CTY_FULLNAME}</option>`);
      $('#city1_id').val($('#city1 option:selected').val());
      $('#city1_value').val($('#city1 option:selected').text());
    }
    else{
      $('#city1').append(`<option value='${city1.CTY_CITYCODE}'>${city1.CTY_FULLNAME}</option>`);
    }
  });
});



}, 5000);


$('#occ').change(function(){
  $('#occ_id').val($('#occ option:selected').val());
  $('#occ_value').val($('#occ option:selected').text());
});

$('#ai').change(function(){
  $('#ai_id').val($('#ai option:selected').val());
  $('#ai_value').val($('#ai option:selected').text());
});

$('#soi').change(function(){
  $('#soi_id').val($('#soi option:selected').val());
  $('#soi_value').val($('#soi option:selected').text());
});
$('#bank').change(function(){
  var bank_val = $('#bank option:selected').val();
  var bank_text = $('#bank option:selected').text();
  $('#bank_id').val(bank_val);
  $('#bank_value').val(bank_text);
  $('#branch').empty();

  var settings = {
    "url": "https://daofservice.hblasset.com/DigitalAccountOpenTillVerify.asmx?op=GetBankBranchByBankID",
    "method": "POST",
    "timeout": 0,
    "headers": {
      "Content-Type": "text/xml"
    },
    "data": `<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<soap12:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\">\r\n  <soap12:Body>\r\n    <GetBankBranchByBankID xmlns=\"http://tempuri.org/\">\r\n      <BankID>${bank_val}</BankID>\r\n    </GetBankBranchByBankID>\r\n  </soap12:Body>\r\n</soap12:Envelope>`,
  };
  
  $.ajax(settings).done(function (branch1) {
    branch_data1 = JSON.parse(branch1.getElementsByTagName('GetBankBranchByBankIDResult')[0].textContent).Table;
    branch_data1.forEach(function(brnch){
          $('#branch').append(`<option value='${brnch.BBR_ID}'>${brnch.BBR_NAME}</option>`);    
      }); 
  });



});
$('#ibank').change(function(){
  $('#ibank_id').val($('#ibank option:selected').val());
  $('#ibank_value').val($('#ibank option:selected').text());
});
$('#fname').change(function(){
  $('#fname_id').val($('#fname option:selected').val());
  $('#fname_value').val($('#fname option:selected').text());
});
$('#asf').change(function(){
  $('#asf_id').val($('#asf option:selected').val());
  $('#asf_value').val($('#asf option:selected').text());
});
$('#pob_country').change(function(){
  var pob_country_val = $('#pob_country option:selected').val();
  var pob_country_text = $('#pob_country option:selected').text();
  $('#pob_country_id').val(pob_country_val);
  $('#pob_country_value').val(pob_country_text);
  $('#pob_city').empty();
  var settings = {
    "url": "https://daofservice.hblasset.com/DigitalAccountOpenTillVerify.asmx?op=getCityCodeByCountryID",
    "method": "POST",
    "timeout": 0,
    "headers": {
      "Content-Type": "text/xml"
    },
    "data": `<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<soap12:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\">\r\n<soap12:Body>\r\n<getCityCodeByCountryID xmlns=\"http://tempuri.org/\">\r\n<CountryCode>${pob_country_val}</CountryCode>\r\n</getCityCodeByCountryID>\r\n</soap12:Body>\r\n</soap12:Envelope>`,
  };
  
  $.ajax(settings).done(function (citypob) {
    city_data1 = JSON.parse(citypob.getElementsByTagName('getCityCodeByCountryIDResult')[0].textContent).Table;
    city_data1.forEach(function(pobcity1){
        $('#pob_city').append(`<option value='${pobcity1.CTY_CITYCODE}'>${pobcity1.CTY_FULLNAME}</option>`);
    });
  });
  
});
$('#country1').change(function(){
  var country1_val = $('#country1 option:selected').val();
  var country1_text = $('#country1 option:selected').text();
  $('#country1_id').val(country1_val);
  $('#country1_value').val(country1_text);
  $('#city1').empty();

  var settings = {
    "url": "https://daofservice.hblasset.com/DigitalAccountOpenTillVerify.asmx?op=getCityCodeByCountryID",
    "method": "POST",
    "timeout": 0,
    "headers": {
      "Content-Type": "text/xml"
    },
    "data": `<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<soap12:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\">\r\n<soap12:Body>\r\n<getCityCodeByCountryID xmlns=\"http://tempuri.org/\">\r\n<CountryCode>${country1_val}</CountryCode>\r\n</getCityCodeByCountryID>\r\n</soap12:Body>\r\n</soap12:Envelope>`,
  };
  
  $.ajax(settings).done(function (city1) {
    city1_data1 = JSON.parse(city1.getElementsByTagName('getCityCodeByCountryIDResult')[0].textContent).Table;
    city1_data1.forEach(function(city2){
        $('#city1').append(`<option value='${city2.CTY_CITYCODE}' selected>${city2.CTY_FULLNAME}</option>`);
    });
  });

});
$('#pob_city').change(function(){
  $('#pob_city_id').val($('#pob_city option:selected').val());
  $('#pob_city_value').val($('#pob_city option:selected').text());
});
$('#city1').change(function(){
  $('#city1_id').val($('#city1 option:selected').val());
  $('#city1_value').val($('#city1 option:selected').text());
});
$('#branch').change(function(){
  $('#branch_id').val($('#branch option:selected').val());
  $('#branch_value').val($('#branch option:selected').text());
});
</script>
@endsection
