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


<form  method="post" action="{{url('store')}}" enctype="multipart/form-data">
{{csrf_field()}}



<div class="tables">
<div class="panel-body widget-shadow">
  <table class="table">

    <tbody>
      <h4 class="alert alert-success" >Personal Information</h4>

        <tr>
        <td>Name</td>
        <td><?php echo $data['name']; ?></td>
      </tr>
      <tr>
        <td>Father Name</td>
        <td><?php echo $data['father_name']; ?></td>
      </tr>
      <tr>
        <td>Email</td>
        <td><?php echo $data['email']; ?></td>
      </tr>
      <tr>
        <td>Date Of Birth</td>
        <td>
          <?php
            $new_date = new DateTime($data['dob']);
            echo $new_date->format('d M Y');
            ?>
            </td>
      </tr>
      <tr>
        <td>Cnic</td>
        <td><?php echo $data['cnic']; ?></td>
      </tr>
      <tr>
        <td>Cnic Attachment</td>
        <td>
          <img id="imageresource" src="{{url('uploads')}}/{{$data['cnic_file']}}" style="width: 546px; height: 254px;" />
          <?php
            // $imageData = file_get_contents($_FILES['cnic_file']['tmp_name']);
            // echo sprintf('<img src="data:image/png;base64,%s" />', base64_encode($imageData));
            ?>
          </td>
      </tr>
      <tr>
        <td>Cell</td>
        <td><?php echo $data['cell']; ?></td>
      </tr>
      <tr>
        <td>Occupation</td>
        <td><?php echo $data['occupation']; ?></td>
      </tr>
      <tr>
        <td>Source Of Income</td>
        <td><?php echo $data['soi']; ?></td>
      </tr>
      <tr>
        <td>Address</td>
        <td><?php echo $data['address']; ?></td>
      </tr>
      <tr>
        <td>Country</td>
        <td><?php echo $data['country']; ?></td>
      </tr>
      <tr>
        <td>City</td>
        <td><?php echo $data['city']; ?></td>
      </tr>

    </tbody>
  </table>

  <table class="table table-bordered">

    <tbody>
      <h4 class="alert alert-success" >Fund Detail</h4>
      <tr>
        <th>Fund Name</th>
        <th>Fund Amount</th>
        <th>Amount In Words</th>
      </tr>
      @foreach(json_decode($data['funds']) as $fund)
      <tr>
        <td width="30%">{{$fund[0]}}</td>
        <td width="20%">{{$fund[1]}}</td>
        <td width="50%">{{$fund[2]}}</td>
      </tr>
      @endforeach
    </tbody>
  </table>

  <table class="table table-bordered">

    <tbody>
      <h4 class="alert alert-success">Payment Details</h4>
      <tr>
        <th>Fund Name</th>
        <th>Fund Amount</th>
      </tr>
      @foreach(json_decode($data['payment_details']) as $pd)
      <tr>
        <td width="30%">{{substr($pd[0], 0, -2)}}</td>
        <td width="20%">
          <img id="imageresource" src="{{url('uploads')}}/{{$pd[1]}}" style="width: 546px; height: 254px;" />
        </td>
      </tr>
      @endforeach


      <!-- <tr>
        <td>All Data</td>
        <td><?php // dump($data); ?></td>
      </tr> -->
    </tbody>
  </table>
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
</body>
</html>
