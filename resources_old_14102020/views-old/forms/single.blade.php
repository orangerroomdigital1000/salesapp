@extends('layouts.retail-app')

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
<h4 style="color:white;">Form Id # {{$data[0]->form_id}}
  <button type="button" class="btn btn-success" style="float:right;margin-top:-5px;" data-toggle="modal" data-target="#myModal">Discussion</button>
</h4>
</div>


<div class="tables">
<div class="panel-body widget-shadow">




<table class="table">
<tbody>

<?php foreach($data as $data){ ?>

<form  method="post" action="{{url('send_back')}}/{{$data->form_id}} " enctype="multipart/form-data">
<button type="submit" class="btn btn-info" style="float:right;margin:0px;">Send Back To Changes</button>
{{csrf_field()}}

<br>
<strong>Add Special Note</strong>
<br>
<textarea required name="msg" class="form-control" rows="4"></textarea>
<br>
<h4 class="alert alert-success" >Personal Information</h4>
<tr>
<td>
<input type="hidden" name="user_id" value="{{$data->user_id}}">
<input type="checkbox" name="fields[]" value="name">
</td>
<th>Name</th>
<td><?php echo $data->name; ?></td>
</tr>

<tr>
<td>
<input type="checkbox" name="fields[]" value="father_name">
</td>
<th>Father Name</th>
<td><?php echo $data->father_name;?></td>
</tr>

<tr>
<td>
<input type="checkbox" name="fields[]" value="cnic">
</td>
<th>CNIC</th>
<td><?php echo $data->cnic; ?></td>
</tr>

<tr>
<td>
<input type="checkbox" name="fields[]" value="cell">
</td>
<th>CELL</th>
<td><?php echo $data->cell; ?></td>
</tr>

<tr>
<td>
<input type="checkbox" name="fields[]" value="occupation">
</td>
<th>occupation</th>
<td><?php echo $data->occupation;?></td>
</tr>

<tr>
<td>
<input type="checkbox" name="fields[]" value="soi">
</td>
<th>Source Of Income</th>
<td><?php echo $data->soi; ?></td>


</tr>

<tr>
<td>
<input type="checkbox" name="fields[]" value="address">
</td>
<th>Address</th>
<td><?php echo $data->address; ?></td>
</tr>

</tbody>
</table>


<h4 class="alert alert-success" >Fund Details</h4>
<table class="table table-bordered">
<thead>
<tr>
<th>Fund Name</th>
<th>Fund Amount</th>
<th>Amount In Words</th>
</tr>
</thead>
<tbody>

<?php $funds = json_decode($data->funds);
			foreach ($funds as $key) {
?>
<tr>
<td>
		<input style="float:left;" type="checkbox" value="{{$key[0]}}" name="funds[]">
	<div style="padding:8px; margin-left:2%;" class="col-sm-5">{{$key[0]}}</div>
</td>
<td>
	<div style="    padding: 8px;
margin-left: 2%;" class="col-sm-5">{{$key[1]}}</div></td>
<td>
		<div style="    padding: 8px;
margin-left: 2%;" class="col-sm-5">{{$key[2]}}</div></td>

</tr>
<?php  } ?>

</tbody>
</table>

<h4 class="alert alert-success" >Payment Details</h4>
<table class="table table-bordered">
<thead>
<tr>
<th>Mode of Payment</th>
<th>Attachments</th>
</tr>
</thead>
<tbody>
@foreach(json_decode($data->payment_details) as $pd)
<tr>
<td>
	<input style="float:left;" type="checkbox" value="{{$pd[0]}}" name="payment_details[]">
		<div style="padding: 8px; margin-left: 2%;" class="col-sm-5">{{substr($pd[0], 0, -2)}}</div></td>

<td>
	<button type="button" style="background: none; border:none;" value="{{$pd[1]}}" class="pop">
	<img id="imageresource" src="{{url('uploads')}}/{{$pd[1]}}" style="width: 75px; height: 75px;">
	</button>
</td>

</tr>
@endforeach

</tbody>

</table>

</form>

<br>

<table class="table">
<h4 class="alert alert-success">Action</h4>
<tbody>
<tr>
<th>Sales Agent</th>
<td><strong><?php echo \DB::table('users')->where('id',$data->user_id)->pluck('name')[0]; ?></strong></td>
</tr>

<tr>
<th>Chanel</th>
<td><?php echo ($data->land_from); ?></td>
</tr>

<tr>
<th>Submitted At</th>
<td><?php echo ($data->created_at); ?></td>
</tr>

<tr>
<th>Updated At</th>
<td><?php echo ($data->created_at); ?></td>
</tr>

</tbody>
</table>

<!-- Modal -->

<?php } ?>


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
                    	<?php
											$msgs = \DB::table('discussions')->where('form_id',$data->form_id)->get();
											?>
                    	@foreach($msgs as $msg)
											<?php 	$role = \DB::table('users')->where('id',$msg->sender_id)->pluck('role_id')[0]; ?>
											@if($role == 1)

											<li class="left clearfix" style="list-style-type: none;"><span class="chat-img pull-left">
													<img src="http://placehold.it/50/55C1E7/fff&text=S" alt="User Avatar" class="img-circle" />
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
$(".pop").on("click", function() {

var value = this.value;
var url = '<?php echo url('uploads');?>';

$('#imagepreview').attr('src',url+'/'+value);
$('#imagemodal').modal('show');


});
</script>

@endsection
