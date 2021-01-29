<?php //dd($cds_new[15][1]);?>
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
<tr>
<th>
{{$cdn[0]}}
</th>
<td>
@php
$ext = pathinfo($cdn[1], PATHINFO_EXTENSION);
@endphp
@if($ext == 'jpg' || $ext == 'jpeg' || $ext == 'png')

    @if($cdn[0] == 'cnic_attachment')

        <input type="file" name="{{$cdn[0]}}">
        <br>
        <button type="button" style="background: none; border:none;" value="{{$cdn[1]}}" class="pop" id="cnic_attachment">
       
        <img width="150px" height="150px" src="{{url('uploads/cnic_attachment')}}/{{$cdn[1]}}">  

      
        </button>
        @elseif($cdn[0] == 'soi_attachment')
        <input type="file" name="{{$cdn[0]}}">
        <br>
        <button type="button" style="background: none; border:none;" value="{{$cdn[1]}}" class="pop" id="soi_attachment">
    
        <img width="150px" height="150px" src="{{url('uploads/soi_attachment')}}/{{$cdn[1]}}">  

        <!-- <img width="150px" height="150px" src="{{url('uploads/zakat_certificates')}}/{{$cdn[1]}}">  
         -->
        </button>

        @else
         <input type="file" name="{{$cdn[0]}}">
        <br>
        <button type="button" style="background: none; border:none;" value="{{$cdn[1]}}" class="pop" id="zk">
        <img width="150px" height="150px" src="{{url('uploads/zakat_certificates')}}/{{$cdn[1]}}">  
        
        </button>

        
    @endif

@elseif($cdn[0] == 'dob' || $cdn[0] == 'cnic_issue_date')
<input class="form-control" value="{{$cdn[1]}}" type="date" name="cd[{{$cdn[0]}}]"> 
@elseif($cdn[0] == 'zakat')

@if($cdn[1] == 'no')
<input value="yes" type="radio" name="cd[{{$cdn[0]}}]"> 
yes
&nbsp;&nbsp;
<input @isset($cdn[1]) checked @endisset value="{{$cdn[1]}}" type="radio" name="cd[{{$cdn[0]}}]"> 
{{$cdn[1]}}
@endif

@if($cdn[1] == 'yes')

<input @isset($cdn[1]) checked @endisset value="{{$cdn[1]}}" type="radio" name="cd[{{$cdn[0]}}]"> 
{{$cdn[1]}}
&nbsp;&nbsp;
<input value="no" type="radio" name="cd[{{$cdn[0]}}]"> 
no
@endif

@else
<input class="form-control" type="text" name="cd[{{$cdn[0]}}]" value="{{$cdn[1]}}">
@endif
</td>

</tr>
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
<tr>
<th>{{$cdn[0]}}</th>
<td><input class="form-control" type="text" name="bd[{{$cdn[0]}}]" value="{{$cdn[1]}}"></td>
</tr>
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
<tr>
<th>{{$cdn[0]}}</th>

<?php $ext = pathinfo($cdn[1], PATHINFO_EXTENSION); ?>
<!-- <td><input class="form-control" type="text" name="{{$cdn[0]}}" value="{{$cdn[1]}}"></td> -->
<td>
@if($ext == 'jpg' || $ext == 'jpeg' || $ext == 'png' || $ext == 'PNG' || $ext == 'JPG' || $ext == 'JPEG')
<input type="file" name="{{$cdn[0]}}" id="">
<br>
<button type="button" style="background: none; border:none;" value="{{$cdn[1]}}" class="pop">
<img width="150px" height="150px" src="{{url('uploads/investment_detail_attachments')}}/{{$cdn[1]}}">  
</button>
@else
<?php $amount = '';
if($cdn[0] == 'amount'){
	$amount = 'amount';
?>
<input id="aiw_value" type="hidden" name="aiw_value" >
<?php } ?>
<input id="{{$amount}}" class="form-control" type="text" name="ids[{{$cdn[0]}}]" value="{{$cdn[1]}}">
<?php echo  '<p id="aiw">'.$aiw_db.'</p>'; ?>
@endif
</td>

</tr>

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
    <span>{{$cdn[1]}}</span>
    <!-- <input class="form-control" type="text" name="od[{{$cdn[0]}}]" value="{{$cdn[1]}}"> -->
    <select class="form-control" name="od[{{$cdn[0]}}]">
        <option value="Monthly">Monthly</option>
        <option value="Quarterly">Quarterly</option>
        <option value="Annually">Annually</option>
        <option value="Do not send">Do not send</option>
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
    <input class="form-control" type="text" name="od[{{$cdn[0]}}]" value="{{$cdn[1]}}">
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

@if($cdn[1] == 'no')
<input value="yes" type="radio" name="fd[{{$cdn[0]}}]"> 
yes
&nbsp;&nbsp;
<input @isset($cdn[1]) checked @endisset value="{{$cdn[1]}}" type="radio" name="fd[{{$cdn[0]}}]"> 
{{$cdn[1]}}
@endif

@if($cdn[1] == 'yes')

<input @isset($cdn[1]) checked @endisset value="{{$cdn[1]}}" type="radio" name="fd[{{$cdn[0]}}]"> 
{{$cdn[1]}}
&nbsp;&nbsp;
<input value="no" type="radio" name="fd[{{$cdn[0]}}]"> 
no
@endif

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

@if($cdn[1] == 'no')
<input value="yes" type="radio" name="fd[{{$cdn[0]}}]"> 
yes
&nbsp;&nbsp;
<input @isset($cdn[1]) checked @endisset value="{{$cdn[1]}}" type="radio" name="fd[{{$cdn[0]}}]"> 
{{$cdn[1]}}
@endif

@if($cdn[1] == 'yes')

<input @isset($cdn[1]) checked @endisset value="{{$cdn[1]}}" type="radio" name="fd[{{$cdn[0]}}]"> 
{{$cdn[1]}}
&nbsp;&nbsp;
<input value="no" type="radio" name="fd[{{$cdn[0]}}]"> 
no
@endif

</td>
</tr>

@elseif($cdn[0] == 'for_citi')
<tr>
<th>{{$cdn[0]}}</th>
<td>

@if($cdn[1] == 'no')
<input value="yes" type="radio" name="fd[{{$cdn[0]}}]"> 
yes
&nbsp;&nbsp;
<input @isset($cdn[1]) checked @endisset value="{{$cdn[1]}}" type="radio" name="fd[{{$cdn[0]}}]"> 
{{$cdn[1]}}
@endif

@if($cdn[1] == 'yes')

<input @isset($cdn[1]) checked @endisset value="{{$cdn[1]}}" type="radio" name="fd[{{$cdn[0]}}]"> 
{{$cdn[1]}}
&nbsp;&nbsp;
<input value="no" type="radio" name="fd[{{$cdn[0]}}]"> 
no
@endif

</td>
</tr>

@elseif($cdn[0] == 'attor')
<tr>
<th>{{$cdn[0]}}</th>
<td>

@if($cdn[1] == 'no')
<input value="yes" type="radio" name="fd[{{$cdn[0]}}]"> 
yes
&nbsp;&nbsp;
<input @isset($cdn[1]) checked @endisset value="{{$cdn[1]}}" type="radio" name="fd[{{$cdn[0]}}]"> 
{{$cdn[1]}}
@endif

@if($cdn[1] == 'yes')

<input @isset($cdn[1]) checked @endisset value="{{$cdn[1]}}" type="radio" name="fd[{{$cdn[0]}}]"> 
{{$cdn[1]}}
&nbsp;&nbsp;
<input value="no" type="radio" name="fd[{{$cdn[0]}}]"> 
no
@endif

</td>
</tr>
@elseif($cdn[0] == 'trans_fund')
<tr>
<th>{{$cdn[0]}}</th>
<td>

@if($cdn[1] == 'no')
<input value="yes" type="radio" name="fd[{{$cdn[0]}}]"> 
yes
&nbsp;&nbsp;
<input @isset($cdn[1]) checked @endisset value="{{$cdn[1]}}" type="radio" name="fd[{{$cdn[0]}}]"> 
{{$cdn[1]}}
@endif

@if($cdn[1] == 'yes')

<input @isset($cdn[1]) checked @endisset value="{{$cdn[1]}}" type="radio" name="fd[{{$cdn[0]}}]"> 
{{$cdn[1]}}
&nbsp;&nbsp;
<input value="no" type="radio" name="fd[{{$cdn[0]}}]"> 
no
@endif

</td>
</tr>

@elseif($cdn[0] == 'wf')
<tr>
<th>{{$cdn[0]}}</th>
<td>

@if($cdn[1] == 'no')
<input value="yes" type="radio" name="fd[{{$cdn[0]}}]"> 
yes
&nbsp;&nbsp;
<input @isset($cdn[1]) checked @endisset value="{{$cdn[1]}}" type="radio" name="fd[{{$cdn[0]}}]"> 
{{$cdn[1]}}
@endif

@if($cdn[1] == 'yes')

<input @isset($cdn[1]) checked @endisset value="{{$cdn[1]}}" type="radio" name="fd[{{$cdn[0]}}]"> 
{{$cdn[1]}}
&nbsp;&nbsp;
<input value="no" type="radio" name="fd[{{$cdn[0]}}]"> 
no
@endif

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
  var result=str.replace(/\s+/g, ' ') + str1 + 'only';

  $('#aiw').text(result);
  $('#aiw_value').val(result);
  
});
</script>
@endsection
