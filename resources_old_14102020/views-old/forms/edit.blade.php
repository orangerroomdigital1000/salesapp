@extends('layouts.admin-app')

@section('content')
<!-- main content start-->
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


@foreach($errors->all() as $error)
<div class="alert alert-danger" role="alert">
{{$error}}
</div>
@endforeach
<form method="POST" action="{{url('fields/'.$data->form_id)}}" enctype="multipart/form-data" class="form-horizontal">
{{csrf_field()}}
<input name="_method" type="hidden" value="PUT">
<strong>Instructions:</strong>
<div class="alert alert-danger" role="alert">
<?php $data = \DB::table('discussions')->where('form_id',$data->form_id)
->where('sender_id','!=',\Auth::user()->id)
->limit(1)
->orderBy('id','desc')
->first();
?>
{{$data->msg}}
<br>
</div>

<div class="forms">
<div class=" form-grids row form-grids-right">
<div class="widget-shadow " data-example-id="basic-forms">
<div class="form-title">
<h4>Form Id # {{$data->form_id}}
  <button type="button" class="btn btn-success" style="float:right;margin-top:-5px;" data-toggle="modal" data-target="#myModal">Discussion</button>
</h4>

</div>
<div class="form-body">
  <div class="row">
  <div class="col-sm-12">
    <strong>Add Special Note</strong>
    <br>
    <textarea required  name="msg" class="form-control" rows="4"></textarea>

  </div>
  </div>

  @if(count($fields_array) > 0)
  <br>
  <div class="col-sm-12">
    @foreach($fields_array as $fields_array)

  <table class="table table-bordered">
    <tbody>

  <th>{{$fields_array['keys']}}</th>
  <tr>

  <td>
    <input type="text" name="fields[{{$fields_array['keys']}}]" value="{{$fields_array['values']}}" class="form-control">

  </td>


  </tr>

  </tbody>

  </table>
  @endforeach
  </div>
  @endif


@if(count($funds_array) > 0)
<br>
<div class="col-sm-12">

<table class="table table-bordered">
<thead>
<tr>
<th>Fund Name</th>
<th>Fund Amount</th>
<th>Fund Amount (In Words)</th>
</tr>
</thead>
<tbody>


@foreach($funds_array as $funds_array)
<tr>
<td width="300">
	<div style="padding: 8px; margin-left: 2%;" class="col-sm-5">{{$funds_array[0]}}</div></td>

<td width="300">
  <input type="hidden" name="funds[]" value="{{$funds_array[0]}}">
  <input type="text" name="funds[]" value="{{$funds_array[1]}}" class="form-control">
</td>
<td width="300">

  <input type="text" name="funds[]" value="{{$funds_array[2]}}" class="form-control">
</td>

</tr>
@endforeach
</tbody>

</table>
</div>
@endif


@if(count($payment_details) > 0)
<br>

<div class="col-sm-12">
<table class="table table-bordered">
<thead>
<tr>
<th>Mode of Payment</th>
<th>Attachments</th>
<th>Action</th>
</tr>
</thead>
<tbody>

@foreach($payment_details as $pd)
<tr>
<td>
	<div style="padding: 8px; margin-left: 2%;" class="col-sm-5">{{substr($pd[0], 0, -2)}}</div></td>

<td>
	<button type="button" style="background: none; border:none;" value="{{$pd[1]}}" class="pop">
	<img id="imageresource" src="{{url('uploads')}}/{{$pd[1]}}" style="width: 75px; height: 75px;">
	</button>
</td>
<td width="300">

    <!-- <input data-filename="{{$pd[0]}}" type="file" class="file form-control" name="files[]"> -->
    <input type="file" class="file form-control" name="files[{{$pd[0]}}][]">
    <input type="hidden" class="hidden_mop" name="mop">
</td>

</tr>
@endforeach
</tbody>

</table>
</div>
@endif

<div class="row">
<br>
<br>
<div class="col-md-12">
<button  type="submit" class="btn btn-primary">Submit</button>
<div class="auto_click" style="display:none;">

</div>
</div>


</form>

</div>
</div>
</div>
</div>
<div class="clearfix"> </div>

</div>
</div>
</div>

<!-- Creates the bootstrap modal where the image will appear -->
<div class="modal fade" id="imagemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
<h4 class="modal-title" style="color:black;" id="myModalLabel">Image preview</h4>
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
                    	<?php $msgs = \DB::table('discussions')->where('form_id',$data->form_id)->get();

                    	?>
                    	@foreach($msgs as $msg)

                    	@if(Auth::user()->id == $msg->receiver_id)
                      @php
                      $role = \DB::table('users')->where('id',$msg->sender_id)->pluck('role_id')[0];
                      $string = ($role == 3) ? 'RA' : 'R';
                      @endphp

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
                        @endif
                        @if(Auth::user()->id == $msg->sender_id)

                        <li class="right clearfix" style="list-style-type: none;"><span class="chat-img pull-right">
                            <img src="http://placehold.it/50/FA6F57/fff&text=S" alt="User Avatar" class="img-circle" />
                        </span>
                            <div class="chat-body clearfix">
                                <div class="header text-right">
																	<strong style="margin-right:7px;">{{Auth::user()->name}}</strong>
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

// var arr = [];
// $('.file').click(function(){
// var mop = $(this).data('filename');
// arr.push(mop);
// arr.some(function(v,i){
//   if(arr.indexOf(v) != i){
//       arr.pop();
//   }
// });
// $('.hidden_mop').val(arr);
// });

$(".pop").on("click", function() {

var value = this.value;
var url = '<?php echo url('uploads');?>';
$('#imagepreview').attr('src',url+'/'+value);
$('#imagemodal').modal('show');
});
</script>

@endsection
