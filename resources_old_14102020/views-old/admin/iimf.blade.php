@extends('layouts.admin-app')

@section('content')
<!-- main content start-->
<div id="page-wrapper">
<div class="main-page">


<div class="forms">

<div class=" form-grids row form-grids-right">
<div class="widget-shadow " data-example-id="basic-forms"> 
<div class="form-title">
<h4>Add Slide:</h4>
</div>
<div class="form-body">
<form method="post" action="{{url('iimf')}}">
{{csrf_field()}}	
<table class="table slides">
<tbody>
<tr>
<th>Title</th>
<td>
<input name="title" class="form-control" value="">
</td>
</tr>


<tr>
<th>Sub Heading</th>
<td>
<input name="sh" class="form-control" value="">
</td>
</tr>

<tr>
<th>Sub Field</th>
<td>
<input name="sf" class="form-control" value="">
</td>
</tr>
<tr>
<th>Field 1</th>
<td>
<textarea name="f1" class="form-control"></textarea>
</td>
</tr>

<tr>
<th>Field 2</th>
<td>
<textarea name="f2" class="form-control"></textarea>
</td>
</tr>

<tr>
<th>Field 3</th>
<td>
<textarea name="f3" class="form-control"></textarea>
</td>
</tr>


<tr>
<th>Field 4</th>
<td>
<textarea name="f4" class="form-control"></textarea>
</td>
</tr>

<tr>
<th>Field 5</th>
<td>
<textarea name="f5" class="form-control"></textarea>
</td>
</tr>

<tr>
<th>Field 6</th>
<td>
<textarea name="f6" class="form-control"></textarea>
</td>
</tr>

<tr>
<th>Field 7</th>
<td>
<textarea name="f7" class="form-control"></textarea>
</td>
</tr>


<tr>
<th></th>
<td>
<input  style="width:20%; background-color: #00a997;border: none;" class="form-control btn btn-danger"  type="submit">
</td>
</tr>

</tbody>

</table>

</form>
</div>
</div>
</div>
</div>




</div>
</div>

@endsection
