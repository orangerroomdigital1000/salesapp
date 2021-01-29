@extends('layouts.admin-app')

@section('content')
<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="row-one">
					<div class="col-md-6 ">
						<div class="stats-left ">
							<h5>Total <?php echo date('Y-m-d');?></h5>
							<h4>Pitches</h4>
						</div>
						<div class="stats-right">
							<label>
							<?php echo \DB::table('views')->where('user_id',Auth::user()->id)->sum('count');?>
							</label>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-6 states-mdl">
						<div class="stats-left">
							<h5>Total</h5>
							<h4>Risk Profiles</h4>
						</div>
						<div class="stats-right">
						<label><?php echo count(\DB::table('risks')->where('user_id',Auth::user()->id)->get());?></label>
						</div>
						<div class="clearfix"> </div>
					</div>

					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
@endsection
