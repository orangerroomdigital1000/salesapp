<!DOCTYPE HTML>
<html>
<head>
<title>App Name</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="{{url('css/bootstrap.css')}}" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="{{url('css/style.css')}}" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="{{url('css/font-awesome.css')}}" rel="stylesheet">
<!-- //font-awesome icons -->
 <!-- js-->
<script src="{{url('js/jquery-1.11.1.min.js')}}"></script>
<script src="{{url('js/modernizr.custom.js')}}"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts-->
<!--animate-->
<link href="{{url('css/animate.css')}}" rel="stylesheet" type="text/css" media="all">
<script src="{{url('js/wow.min.js')}}"></script>


	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- chart -->
<script src="{{url('js/Chart.js')}}"></script>
<!-- //chart -->
<!--Calender-->
<link rel="stylesheet" href="{{url('css/clndr.css')}}" type="text/css" />
<script src="{{url('js/underscore-min.js')}}" type="text/javascript"></script>
<script src= "{{url('js/moment-2.2.1.js')}}" type="text/javascript"></script>
<!--End Calender-->
<!-- Metis Menu -->
<script src="{{url('js/metisMenu.min.js')}}"></script>
<script src="{{url('js/custom.js')}}"></script>
<link href="{{url('css/custom.css')}}" rel="stylesheet">
<!--//Metis Menu -->
  <script src="{{url('js/tinymce/tinymce.min.js')}}"></script>
  <!--<script src="https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=o3g3cfi245ec5l645jm2cb1pbcjaxl64j8ib5v768z616jr1"></script>-->

</head>
<body class="cbp-spmenu-push">
	<div class="main-content">
		<!--left-fixed -navigation-->
		<div class=" sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">

					<ul class="nav" id="side-menu">

						<li>
						<a style="color:white;" href="{{url('/')}}"><i class="fa fa-home nav_icon"></i> Home</a>
						</li>
						@if(Auth::user()->role_id == 1)

						<li>
					<a style="color:white; display:none;" href="{{url('form/create')}}"><i class="fa fa-book nav_icon"></i> Account Opening Form</a>
					</li>
						@endif
							<li>
						<a style="color:white;" href="{{url('welcome')}}"><i class="fa fa-table nav_icon"></i> Presentation</a>
						</li>
						<li>
						<a style="color:white;" href="{{url('products')}}"><i class="fa fa-th-large nav_icon"></i> Products</a>
						</li>
						<?php if(Auth::user()->role_id == 1){ ?>
							<li>
							<a style="color:white;display:none;" href="{{url('/fields')}}"><i class="fa fa-check-square-o nav_icon"></i>Fields
								<span style="border-radius: 50px;" class="nav-badge-btm">
											@php
											$count = DB::table('fields')
											->where('status','unchecked')
											->where('user_id',\Auth::user()->id)
											->count();
											@endphp

											@if($count > 0)
												@if($count < 10)
													{{'0'.$count}}
												@else
													{{$count}}
											@endif
										@endif
								</span>
							</a>
							</li>
						<li>
						<a style="color:white;" href="{{url('my-risk-profiles')}}/{{Auth::user()->id}}"><i class="fa fa-users nav_icon"></i>My Risk Profiles</a>
						</li>
						<?php } else{?>

						<li>
						<a style="color:white;" href="{{url('risk-profiles')}}"><i class="fa fa-users nav_icon"></i>Risk Profiles</a>
						<span style="border-radius: 50px;" class="nav-badge-btm">
									@php
									$count = DB::table('risks')
									->where('pushed',0)
									->where('user_id',\Auth::user()->id)
									->count();
									@endphp

									@if($count > 0)
										@if($count < 10)
											{{'0'.$count}}
										@else
											{{$count}}
									@endif
								@endif
						</span>
						</li>

						<?php } if(Auth::user()->role_id == 2){ ?>

						<li>
							<a style="color:white;" href="#"><i class="fa fa-user nav_icon"></i>Users<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a style="color:white;" href="{{url('add-user')}}"><i class="fa fa-plus nav_icon"></i>Add User</a>
								</li>
								<li>
									<a style="color:white;" href="{{url('users')}}"><i class="fa fa-user nav_icon"></i>All Users</a>
								</li>
							</ul>
							<!-- //nav-second-level -->
						</li>

						<?php }?>

						<?php if(Auth::user()->role_id != 1){ ?>

						<li>
							<a style="color:white;" href="#"><i class="fa fa-file-text-o nav_icon"></i>Slides<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
							<li>
									<a style="color:white;" href="{{url('welcome-edit')}}"><i class="fa fa-file-text-o nav_icon"></i>Welcome</a>
								</li>

							<li>
									<a style="color:white;" href="{{url('sponsers-edit')}}"><i class="fa fa-file-text-o nav_icon"></i>Sponsor</a>
								</li>
								<li>
									<a style="color:white;" href="{{url('awards-edit')}}"><i class="fa fa-file-text-o nav_icon"></i>Awards</a>
								</li>
								<li>
									<a style="color:white;" href="{{url('hamls-edit')}}"><i class="fa fa-file-text-o nav_icon"></i>
									 AML
									 </a>
								</li>
								<li>
									<a style="color:white;" href="{{url('aums1-edit')}}"><i class="fa fa-file-text-o nav_icon"></i>
									AUMs 1
									</a>
								</li>
								<li>
									<a style="color:white;" href="{{url('aums2-edit')}}"><i class="fa fa-file-text-o nav_icon"></i>
									AUMs 2

								</a>
								</li>
								<li>
									<a style="color:white;" href="{{url('ytp-edit')}}"><i class="fa fa-file-text-o nav_icon"></i>
									Your Trusted Partner
									</a>
								</li>
								<li>
									<a style="color:white;" href="{{url('mf-edit')}}"><i class="fa fa-file-text-o nav_icon"></i>
									What Are Mutual Funds?
									</a>
								</li>
								<li>
									<a style="color:white;" href="{{url('tomf-edit')}}"><i class="fa fa-file-text-o nav_icon"></i>
									Types Of Mutual Funds
									</a>
								</li>
								<li>
									<a style="color:white;" href="{{url('iimf-edit')}}"><i class="fa fa-file-text-o nav_icon"></i>
									ADVANTAGES OF INVESTING IN MUTUAL FUNDS
									</a>
								</li>

							</ul>
							<!-- //nav-second-level -->
						</li>

												<li>
							<a style="color:white;" href="{{url('funds')}}"><i class="fa fa-bar-chart nav_icon"></i>Funds</a>

						</li>

						<?php } ?>





					</ul>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>

		<div id="test"></div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<!--logo -->
				<img style="margin-top: 22px; width: 37%; margin-left: -2%;" src="{{url('images/logo.PNG')}}" alt="">
				<!--//logo-->

				<div class="clearfix"> </div>
			</div>
			<div class="header-right">

				<div class="profile_details">
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">
									<span class="prfil-img"><img style="display:none;" src="" alt=""> </span>
									<div class="user-name">
										<p>  {{ Auth::user()->name }}</p>
										<span>
										<?php if(Auth::user()->role_id == 2){ ?>
										Administrator
										<?php }?>
										<?php if(Auth::user()->role_id == 0){ ?>
										Admin
										<?php }?>

										<?php if(Auth::user()->role_id == 1){ ?>
										Sales
										<?php }?>
										</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>
								</div>
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
													 <i class="fa fa-sign-out"></i>Logout</a>
                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
		<!-- //header-ends -->
		@yield('content')

		<!--footer-->
		<div class="footer">
		   <p>&copy; <?php echo date('Y');?>All Rights Reserved | Design & Developed by <a href="{{url('http://orangeroomdigital.com/')}}" target="_blank">Orange Room Digital</a></p>
		</div>
        <!--//footer-->
	</div>
	<!-- Classie -->
		<script src="{{url('js/classie.js')}}"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;

			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};


			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!--scrolling js-->
	<script src="{{url('js/jquery.nicescroll.js')}}"></script>
	<script src="{{url('js/scripts.js')}}"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
   <script src="{{url('js/bootstrap.js')}}"> </script>

   <script id="mytextarea">
tinymce.init({
  selector: '.mytextarea',
  height: 500,
  menubar: false,
  plugins: [
    'advlist autolink lists link image charmap print preview anchor textcolor',
    'searchreplace visualblocks code fullscreen',
    'insertdatetime media table contextmenu paste code help wordcount'
  ],
  toolbar: 'insert | undo redo |  formatselect | bold italic backcolor  | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | removeformat | help',
  content_css: [
    '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
    '//www.tinymce.com/css/codepen.min.css']
});




</script>
</body>
</html>
