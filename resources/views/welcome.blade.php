<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>:: HBL Corporate Presentation Demo ::</title>

<link rel="stylesheet" href="{{asset('css/reveal.css')}}">
<link rel="stylesheet" href="{{asset('css/theme/white.css')}}" id="theme">
<link rel="stylesheet" href="{{asset('css/fe_animate.css')}}">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<!-- Theme used for syntax highlighting of code -->
<link rel="stylesheet" href="{{asset('lib/css/zenburn.css')}}">
<!-- Bootstrap core CSS -->
<link href="{{asset('vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
<link rel="stylesheet" href="{{asset('css/fe_style.css')}}">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Printing and PDF exports -->
<script>
var link = document.createElement( 'link' );
link.rel = 'stylesheet';
link.type = 'text/css';
link.href = window.location.search.match( /print-pdf/gi ) ? 'css/print/pdf.css' : 'css/print/paper.css';
document.getElementsByTagName( 'head' )[0].appendChild( link );
</script>
<!-- Chart js -->
<script src="{{url('js/Chart.bundle.js')}}"></script>
<script src="{{url('js/utils.js')}}"></script>


</head>
<body>

<div class="reveal">
<a href="{{url('/')}}" style="display:block;position:absolute;top:0;left:0; width:280px;height:65px; background:#cc000000;z-index:9999999;
">

</a>
<div id="header">
<div class="col-sm-12">
<img src="{{asset('images/header-logo-img.png')}}" alt="">
</div>
</div>
<!-- charts -->
@include('frontend.charts.welcome_charts')
<!-- charts end -->
<div class="slides">
<!-- Corporate Presentation Start-->
<!-- Paste Here -->


<section data-transition="concave" data-background="./images/intro-img.png" data-background-repeat="no-repeat" data-background-position="top center" data-background-size="100%">

<div id="tittle-page">
<img data-transition="concave" data-animate="fadeInUp" src="./images/hbl-logo.png" alt="">
<h4 data-animate="fadeInUp">Retail Presentation</h4>
<p data-animate="fadeInUp"><?php foreach($welcome as $w){echo $w->date;}?></p>
</div>	
</section >

<section data-transition="concave" data-background="./images/intro-img.png" data-background-repeat="no-repeat" data-background-position="top center" data-background-size="100%">

<div id="tittle-page">
<img data-transition="concave" data-animate="fadeInUp" src="./images/hbl-logo.png" alt="">
<h4 data-animate="fadeInUp">Sponsor</h4>
</div>	
</section >






<!--<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>-->

<section id="fragments" data-transition="slide" data-state="somestate">
<?php foreach($sponsers as $sponser){?>
<h3 class="main-heading" data-animate="fadeInRight"><?php echo $sponser->title;?></h3>
<div class="col-lg-6 slide-2a" >



<p class="slide" data-animate="fadeInLeft">
<?php echo $sponser->f1;?>
<br/><br/>
<?php echo $sponser->f2;?>
<br/><br/>
<?php echo $sponser->f3;?><br/> 
<br/>

<?php  $h =  explode('<br />',$sponser->f4);
foreach($h as $h){
    echo $h.'<br>';
}
?>
<br/>
<?php echo $sponser->f5;?> <br/>
<br/>
<?php echo $sponser->f6;?>
<br/>
</p>
</div>

<div class="col-lg-5 slide-2b ">

<canvas id="canvas1" style="margin-left:50px;"></canvas>
<canvas id="canvas2" style="margin-left:50px;"></canvas>  
</div>
<?php }
?>	
</section>


<section id="fragments" data-transition="slide">
<?php foreach($awards as $award){?>
<h3 class="main-heading" data-animate="fadeInRight"><?php echo $award->title;?></h3>
<div class="col-lg-7 slide-2c" >

<ul class="slide" style="padding-top:15%;" data-animate="fadeInLeft">
<li><strong><?php echo $award->f1_bold;?></strong><?php echo $award->f1_normal;?></li>
<li><strong><?php echo $award->f2_bold;?></strong><?php echo $award->f2_normal;?></li>
<li><strong><?php echo $award->f3_bold;?></strong><?php echo $award->f3_normal;?></li>
<li><strong><?php echo $award->f4_bold;?></strong><?php echo $award->f4_normal;?></li>
<li><strong><?php echo $award->f5_bold;?></strong><?php echo $award->f5_normal;?></li>
<li><strong><?php echo $award->f6_bold;?></strong><?php echo $award->f6_normal;?></li>
<li><strong><?php echo $award->f7_bold;?></strong><?php echo $award->f7_normal;?></li>
<li><strong><?php echo $award->f8_bold;?></strong><?php echo $award->f8_normal;?></li>
<li><strong><?php echo $award->f9_bold;?></strong><?php echo $award->f9_normal;?></li>
<li><strong><?php echo $award->f10_bold;?></strong><?php echo $award->f10_normal;?></li>
</ul>
</div>

<div class="col-lg-5 slide-2d">
<img src="./images/logos.jpg" alt="" data-animate="fadeInLeft">
</div>
<?php }?>
</section>
<section data-transition="concave" data-background="./images/intro-img.png" data-background-repeat="no-repeat" data-background-position="top center" data-background-size="100%">

<div id="tittle-page">
<img data-transition="concave"  data-animate="fadeInUp" src="./images/hbl-logo.png" alt="">
<h4 data-animate="fadeInUp">HBL Asset Management Limited</h4>
</div>	
</section >
<section id="fragments" data-transition="concave" class="about-slide">
<?php foreach($hamls as $haml){?>
<h3 class="main-heading" data-animate="fadeInRight"><?php echo $haml->title;?></h3>
<div class="col-sm-12 about " data-animate="fadeInRight">
<h2 data-animate="fadeInRight"></h2>
<div class="col-sm-1 about-h"></div>
<div class="col-sm-1 about-h"></div>
<div class="col-sm-1 about-h an-d-2 " data-animate="fadeInUp" >
<div class="hexagon"></div>
<p>
<?php  $box =  explode('<br />',$haml->b1);
foreach($box as $box){
    echo $box.'<br>';
}
?>
</p>
</div>
<div class="col-sm-1 about-h an-d-3" data-animate="fadeInUp">
<div class="hexagon"></div>
<p>
<?php  $box =  explode('<br />',$haml->b2);
foreach($box as $box){
    echo $box.'<br>';
}
?>
</p>
</div>
<div class="col-sm-1 about-h an-d-4" data-animate="fadeInUp">
<div class="hexagon"></div>
<p>
<?php  $box =  explode('<br />',$haml->b3);
foreach($box as $box){
    echo $box.'<br>';
}
?>
</p>
</div>
<div class="col-sm-1 about-h an-d-5" data-animate="fadeInUp">
<div class="hexagon"></div>
<p>
<?php  $box =  explode('<br />',$haml->b4);
foreach($box as $box){
    echo $box.'<br>';
}
?>
</p>
</div>
<div class="col-sm-1 about-h  an-d-6" data-animate="fadeInUp">
<div class="hexagon"></div>
<p>
<?php  $box =  explode('<br />',$haml->b5);
foreach($box as $box){
    echo $box.'<br>';
}
?>
</p>

</div>
<div class="col-sm-1 about-h  an-d-7" data-animate="fadeInUp">
<div class="hexagon"></div>
<p>
<?php  $box =  explode('<br />',$haml->b6);
foreach($box as $box){
    echo $box.'<br>';
}
?>
</p>

</div>

<ul>
<li class=" an-d-8" style="margin-top:86px;"  data-animate="fadeInRight"><?php echo $haml->f1;?></li>
<hr class=" an-d-9" data-animate="fadeInLeft">
<li  class=" an-d-10" data-animate="fadeInRight"><?php echo $haml->f2;?></li>
<hr class=" an-d-11" data-animate="fadeInLeft">
<li class=" an-d-12" data-animate="fadeInRight"><?php echo $haml->f3;?></li>
<hr class=" an-d-13" data-animate="fadeInLeft">
<li class=" an-d-14" data-animate="fadeInRight"><?php echo $haml->f4;?></li>

</ul>

</div>
<?php } ?>
</section>


<section id="fragments" data-transition="slide" data-state="some_state1">
<?php foreach($aums1 as $aum1){?>
<div style="display:flex;" >
<h3 class="main-heading" data-animate="fadeInRight"><?php echo $aum1->title;?></h3>
<div class="col-lg-4 slide-2c" >
<p class="slide" data-animate="fadeInLeft">
<?php echo $aum1->f1;?>
</p>

</div>

<div class="col-lg-8 slide-2b1">
<div class="col-lg-12">

<div class="col-sm-1 deposit-chart"></div>
<div class="col-sm-10 deposit-chart">
<h4 style="margin:0 0 50px 0;" data-animate="fadeInUp">Assets Under Management</h4>
<canvas id="canvas3" style="margin-left:50px;"></canvas>  



</div>
</div>

</div>
<?php } ?>
</section>

<section id="fragments" data-transition="slide" data-state="some_state2">
<?php foreach($aums2 as $aum2){?>
<div style="display:flex;">
<h3 class="main-heading" data-animate="fadeInRight"><?php echo $aum2->title;?></h3>
<div class="col-lg-4 slide-2c" >
<p class="slide" data-animate="fadeInLeft">
<?php echo $aum2->f1;?>
</p>

</div>

<div class="col-lg-8 slide-2b1">
<div class="col-lg-12">

<div class="col-sm-1 deposit-chart"></div>
<div class="col-sm-10 deposit-chart">
<h4 style="margin:0 0 50px 0;" data-animate="fadeInUp">Category Wise Funds Under Management </h4>
<canvas id="canvas4" style="margin-left:50px;"></canvas>  
</div>

</div>


</div>
<?php } ?>
</section>

<section data-transition="concave" data-background="./images/intro-img.png" data-background-repeat="no-repeat" data-background-position="top center" data-background-size="100%">

<div id="tittle-page">
<img data-transition="concave" data-animate="fadeInUp" src="./images/hbl-logo.png" alt="">
<h4 data-animate="fadeInUp">Board of Directors</h4>
</div>	
</section >

<section data-transition="concave" class="board-directors">
<h3 class="main-heading" data-animate="fadeInRight">board of directors</h3>

<div class="col-sm-12 bd-team">

<div class="col-sm-12" style="float:left;margin-top: 200px;">



<div class="col-sm-2 team-member animated fadeInDown an-d-2" style="margin-left: 74px;">
<img src="images/005.jpg" alt="">
<strong>Shahid Ghaffar</strong>
<span>Director</span>
</div>

<div class="col-sm-2 team-member animated fadeInRight an-d-3" >
<img src="images/bd01.jpg" alt="">
<strong>Ava Ardeshir Cowasjee </strong>
<span>Director</span>

</div>
<div class="col-sm-2 team-member animated fadeInLeft an-d-4">
<img src="images/bd02.jpg" alt="">
<strong>Rayomond Kotwal</strong>
<span>Director</span>

</div>


<div class="col-sm-2 team-member animated fadeInUp an-d-5" >
<img src="images/006.jpg" alt="">
<strong>Mr. Rizwan Haider</strong>
<span>Director</span>

</div>
<div class="col-sm-2 team-member animated fadeInDown an-d-6">
<img src="images/012.jpg" alt="">
<strong>Shabbir Hashmi</strong>
<span>Director</span>
</div>
</div>

</div>
</section>



<section data-transition="concave" data-background="./images/intro-img.png" data-background-repeat="no-repeat" data-background-position="top center" data-background-size="100%">

<div id="tittle-page">
<img data-transition="concave" data-animate="fadeInUp" src="./images/hbl-logo.png" alt="">
<h4 data-animate="fadeInUp">Management Team</h4>
</div>	
</section >
<section id="fragments" data-transition="concave" class="team-slide">
<h3 class="main-heading" >Management Team</h3>
<div class="col-sm-12 team">


<!-- <div class="col-sm-2 team-member  animated fadeInRight an-d-2" data-animate="fadeInRight" style="margin-left:160px;">
<img src="images/001.jpg" alt="">
<strong>Farid Ahmed Khan</strong>
<span>Chief Executive Officer</span>

</div> -->
<div class="col-sm-2 team-member animated fadeInUp an-d-3" data-animate="fadeInRight" style="margin-left:300px;">
<img src="images/002.jpg" alt="">
<strong>Muhammad Imran</strong>
<span>Chief Investment Officer</span>

</div>
<div class="col-sm-2 team-member  animated fadeInDown an-d-4">
<img src="images/018.jpg" alt="">
<strong>Noman Qurban</strong>
<span>CFO and Company Secretary</span>

</div>

<!--<div class="col-sm-2 team-member  animated fadeInLeft an-d-5" >
<img src="images/004.jpg" alt="">
<strong>Mohammad Amir Khan</strong>
<span>Head of Product Development & Strategy</span>
</div>
--->
<div class="col-sm-2 team-member  animated fadeInRight an-d-5"  >
<img src="images/008.jpg" alt="">
<strong>Hassan Mehdi </strong>
<span>Head of Operations</span>

</div>
<div class="col-sm-2 team-member   animated fadeInUp an-d-6">
<img src="images/007.jpg" alt="">
<strong>Mubeen Ashraf Bhimani</strong>
<span>Head of Compliance</span>

</div>
<div class="col-sm-2 team-member  animated fadeInDown an-d-7">
<img src="images/010.jpg" alt="">
<strong>Faisal Islam</strong>
<span>Head Of Information Technology</span>

</div>



</div>

</section>


<section id="fragments" data-transition="concave" class="team-slide">
<h3 class="main-heading" >Investment Committee
</h3>
<div class="col-sm-12 team">


<!-- <div class="col-sm-2 team-member  animated fadeInRight an-d-2" data-animate="fadeInRight" style="margin-left:57px;">
<img src="images/001.jpg" alt="">
<strong>Farid Ahmed Khan</strong>
<span>Chief Executive Officer</span>

</div> -->
<div class="col-sm-2 team-member animated fadeInUp an-d-3" data-animate="fadeInRight" style="    margin-left: 200px;">
<img src="images/002.jpg" alt="">
<strong>Muhammad Imran</strong>
<span>Chief Investment Officer</span>

</div>

<div class="col-sm-2 team-member  animated fadeInLeft an-d-4" >
<img src="images/016.jpg" alt="">
<strong>Faizan Saleem</strong>
<span>Head of Fixed Income</span>

</div>
<div class="col-sm-2 team-member  animated fadeInRight an-d-5"  >
<img src="images/015.jpg" alt="">
<strong>Sateesh Balani</strong>
<span>Head of Research</span>

</div>
<div class="col-sm-2 team-member   animated fadeInUp an-d-6">
<img src="images/013.jpg" alt="">
<strong>Raza Inam</strong>
<span>Senior Research Analyst</span>

</div>
<div class="col-sm-2 team-member  animated fadeInDown an-d-7">
<img src="images/017.jpg" alt="">
<strong>Adeel Abdul Wahab</strong>
<span>Fund Manager Equity</span>

</div>

<div class="col-sm-2 team-member  animated fadeInLeft an-d-8">
<img src="images/014.jpg" alt="">
<strong>Jawad Naeem</strong>
<span>Fund Manager Equity</span>

</div>




</div>

</section>    

<section id="fragments" data-transition="concave" class="milestones">
<h3 class="main-heading" data-animate="fadeInRight">Milestones</h3>

<div id="mar-2007" data-animate="fadeInUp">
<strong>Mar’2007</strong>
<img src="images/milestones-stock.jpg" alt="">
<p>Launch of First Fund HBL IF</p>
</div>

<div id="apr-2007"  data-animate="fadeInDown">
<p>Started with Rs. 2.7 billion Asset Under Management</p>
<img src="images/milestones-stock.jpg" alt="">
<strong>Apr’2007</strong>
</div>

<div id="aug-2007"  data-animate="fadeInUp">
<strong>Aug’2007</strong>
<img src="images/milestones-stock.jpg" alt="">
<p>Launch of Stock Market Fund HBL SF</p>
</div>

<div id="dec-2007"  data-animate="fadeInDown">
<p>Launch of Balanced Fund HBL MAF</p>
<img src="images/milestones-stock.jpg" alt="">
<strong>Dec’2007</strong>
</div>

<div id="jul-2010"  data-animate="fadeInUp">
<strong>Jul’2010</strong>
<img src="images/milestones-stock.jpg" alt="">
<p>Launch of Money Market Fund HBL MMF</p>
</div>

<div id="may-2011"  data-animate="fadeInDown">
<p>Islamic Money Market Fund HBL IMMF</p>
<img src="images/milestones-stock.jpg" alt="">
<strong>May’2011</strong>
</div>

<div id="jul-2011"  data-animate="fadeInUp">
<strong>Jul’2011</strong>
<img src="images/milestones-stock.jpg" alt="">
<p>Crossed Rs. 10 billion Mark</p>
</div>

<div id="dec-2011"  data-animate="fadeInDown">
<p>Launch of Pension Schemes HBL PF, HBLIPF</p>
<img src="images/milestones-stock.jpg" alt="">
<strong>Dec’2011</strong>
</div>

<div id="jul-2013"  data-animate="fadeInUp">
<strong>Jul’2013</strong>
<img src="images/milestones-stock.jpg" alt="">
<p>Crossed Rs. 20 billion Mark</p>
</div>

<div id="jun-2015"  data-animate="fadeInDown">
<p>Acquisition of PICIC Asset Management</p>
<img src="images/milestones-stock.jpg" alt="">
<strong>Jun’2015</strong>
</div>

<div id="sep-2016"  data-animate="fadeInUp">
<strong>Sep’2016</strong>
<img src="images/milestones-stock.jpg" alt="">
<p>Merger Process Completed</p>
</div>

<div id="dec-2016"  data-animate="fadeInDown">
<p>Rs. 50 billion Mark of Assets Under Management Achieved</p>
<img src="images/milestones-stock.jpg" alt="">
<strong>Dec’2016</strong>
</div>
</section>

<section id="fragments" class="hbl-whyus" data-transition="concave" data-background-transition="concave">
<?php foreach($ytp as $y){?>
<h3 class="main-heading" data-animate="fadeInRight"><?php echo $y->title?></h3>

<div class="col-sm-10" style="margin-left:114px;">
<h4 data-animate="fadeInUp"><?php echo $y->sh?></h4>
<ul>
<li style="padding-top:15px;"  data-animate="fadeInRight">
<?php echo $y->f1;?>
</li>
<hr  data-animate="fadeInRight"/>
<li  data-animate="fadeInRight">
<?php echo $y->f2;?>
</li>
<hr  data-animate="fadeInRight"/>
<li  data-animate="fadeInRight"><?php echo $y->f3;?>
</li>
<hr  data-animate="fadeInRight"/>
<li  data-animate="fadeInRight"><?php echo $y->f4;?>
</li>
<hr  data-animate="fadeInRight"/>
<li  data-animate="fadeInRight">
<?php echo $y->f5;?>
</li>
</ul>

</div>
<?php }?>
</section>



<section data-transition="concave" data-background="./images/intro-img.png" data-background-repeat="no-repeat" data-background-position="top center" data-background-size="100%">

<div id="tittle-page">
<img data-transition="concave" data-animate="fadeInUp" src="./images/hbl-logo.png" alt="">
<h4 data-animate="fadeInUp">What are Mutual Funds?
</h4>
</div>	
</section >
<section id="fragments" class="mutual-funds" data-transition="concave" data-background-transition="concave">
<?php foreach($mf as $m){?>
<h3 class="main-heading" data-animate="fadeInRight"><?php echo $m->title;?></h3>
<div class="col-sm-10" style="margin:0 auto;">

<ul>
<li  data-animate="fadeInRight"><?php echo $m->f1;?></li>
<li  data-animate="fadeInRight"><?php echo $m->f2;?></li>
<li  data-animate="fadeInRight"><?php echo $m->f3;?></li>
<li  data-animate="fadeInRight"><?php echo $m->f4;?></li>
</ul>
<p style="margin:0px 0;">&nbsp;</p> 

<iframe data-animate="fadeInRight" width="660" height="415" src="https://www.youtube.com/embed/Ih7KJwjWWM4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
</div>
<?php }?>
</section>
<section id="fragments" class="hbl-whyus" data-transition="concave" data-background-transition="concave">
<h3 class="main-heading" data-animate="fadeInRight">How do Mutual Funds Work?</h3>

<div style="position:relative;    margin-top: 6%;">
<div class="/fragment investor animated fadeIn an-d-2" id="fregment" data-animate="fadeInOut">
<img src="images/investor.png"  class="invest " alt="">	
</div>
<div class="investor-text /fragment animated fadeIn an-d-2">
Pool their money in
</div>
<div class="/fragment investor-arrow animated fadeIn an-d-2" id="fregment" data-animate="fadeInOut">
<img src="images/ar1.png"  class="invest-arrow" alt="">

</div>

<div class="/fragment fund-round animated fadeIn an-d-3" id="fregment" data-animate="fadeInOut">
<img src="images/fund.png"  class="fund-img" alt="">	
</div>
<div class="fund-text /fragment animated fadeIn an-d-3">
Which is invested in
</div>
<div class="/fragment fund-arrow animated fadeIn an-d-3" id="fregment" data-animate="fadeInOut">
<img src="images/ar2.png"  class="fund-arrow-img" alt="">

</div>

<div class="/fragment securities-round animated fadeIn an-d-4" id="fregment" data-animate="fadeInOut">
<img src="images/securities.png"  class="securities-img" alt="">	
</div>
<div class="securities-text /fragment animated fadeIn an-d-4">
That Generates
</div>
<div class="/fragment securities-arrow animated fadeIn an-d-4" id="fregment" data-animate="fadeInOut">
<img src="images/ar3.png"  class="securities-arrow-img" alt="">

</div>

<div class="/fragment returns-round animated fadeIn an-d-5" id="fregment" data-animate="fadeInOut">
<img src="images/returns.png"  class="returns-img" alt="">	
</div>
<div class="returns-text /fragment animated fadeIn an-d-5">
Given back to
</div>	
<div class="/fragment returns-arrow animated fadeIn an-d-5" id="fregment" data-animate="fadeInOut">
<img src="images/ar4.png"  class="returns-arrow-img" alt="">

</div>
</div>
</section>





<section id="fragments" class="ad-mutual-funds fund-type" data-transition="concave" data-background-transition="concave">
<h3 class="main-heading" data-animate="fadeInRight">Types of Mutual Funds</h3>
<div class="col-sm-10" style="margin-left: 117px;">


<p  data-animate="fadeInRight"><strong>By Structure</strong></p>
<li  data-animate="fadeInRight"><strong>Open End Funds: </strong>These units are issued and redeemed by the Management Company<br/></li>
<li  data-animate="fadeInRight"><strong>Closed End Funds: </strong>Only traded at the Stock Exchange and are not redeemable<br/> </li>
<p  data-animate="fadeInRight"><strong>By Investment Objective
</strong></p>
<li  data-animate="fadeInRight"><strong>Money Market Funds:  </strong>Invest in most liquid securities e.g., Bank Deposits, Treasury bills etc.
<br/></li>
<li  data-animate="fadeInRight"><strong>Growth Funds – Equity Funds: </strong>Invest in Equity Securities<br/> </li>
<li  data-animate="fadeInRight"><strong>Income Funds / Debt Funds: </strong>Invest in longer term Government & Corporate Bonds.
<br/></li>
<li  data-animate="fadeInRight"><strong>Balanced Funds: </strong>Invest in both Fixed Income and Equity Securities<br/></li>
<li  data-animate="fadeInRight"><strong>Asset Allocation Funds: </strong>Usually specifies the percentage of investment in equity and Fixed Income Securities.
<br/> </li>
<li  data-animate="fadeInRight"><strong>Capital Protected Funds: </strong>Guarantees the protection of  capital through different methodologies.
<br/> </li>

<p  data-animate="fadeInRight"><strong>Special Funds

</strong></p>
<li  data-animate="fadeInRight"><strong>Shariah Compliant Funds:</strong>All assets are Shariah Compliant with the approval of Shariah Advisor<br/></li>
<li  data-animate="fadeInRight"><strong>Sector Specific Funds: </strong>Invest only in the sector that is described in offering document<br/> </li>
<li  data-animate="fadeInRight"><strong>Govt. Securities Funds: </strong>Invest in Government bonds both short term and long term.<br/></li>


</div>
<img src="images/mf-img02.png" alt="" data-animate="fadeInRight" style="width: 390px;">
</section>


<section id="fragments" class="ad-mutual-funds" data-transition="concave" data-background-transition="concave">
<?php foreach($iimf as $i){?>


<div class="col-sm-10" style="margin-left:117px;">
<h4 data-animate="fadeInUp" style="text-align:left;"><?php echo $i->sh;?></h4>

<p  data-animate="fadeInRight"><strong><?php echo $i->sf;?></strong></p>
<ul style="float:left;list-style:none;">
<li  data-animate="fadeInRight"><i class="icon ico-user"></i><strong><?php echo $i->f1;?></strong><br/></li>
<li  data-animate="fadeInRight"><i class="icon ico-tax-rebate"></i><strong><?php echo $i->f2;?></strong><br/> </li>
<li  data-animate="fadeInRight"><i class="icon ico-how-to-investment"></i><strong><?php echo $i->f3;?></strong><br/></li>
<li  data-animate="fadeInRight"><i class="icon ico-funds"></i><strong><?php echo $i->f4;?></strong><br/></li>
<li  data-animate="fadeInRight"><i class="icon ico-why-hbl-aml"></i><strong><?php echo $i->f5;?></strong><br/> </li>
<li  data-animate="fadeInRight"><i class="icon ico-check-form"></i><strong><?php echo $i->f6;?></strong><br/> </li>
<li  data-animate="fadeInRight"><i class="icon ico-bar-chart"></i><strong><?php echo $i->f7;?></strong><br/></li>


</ul>

</div>
<img src="images/mf-img02.png" alt="" data-animate="fadeInRight" style="width: 390px; margin:-0px 100px 0 0!important;">
<?php }?>
</section>

<section data-transition="concave" data-background="./images/intro-img.png" data-background-repeat="no-repeat" data-background-position="top center" data-background-size="100%">

<div id="tittle-page">
<img data-transition="concave" data-animate="fadeInUp" src="./images/hbl-logo.png" alt="">
<h4 data-animate="fadeInUp">Shariah Advisor</h4>
</div>
</section >


<section id="fragments" class="ad-mutual-funds sh-board" data-transition="concave" data-background-transition="concave">
<h3 class="main-heading" data-animate="fadeInRight">Shariah Advisors Profile</h3>
<div class="col-sm-8" style="margin:0 auto;">
<h4 data-animate="fadeInUp">Al Hilal – Shariah Supervisory Board

</h4>

<p  data-animate="fadeInRight"><strong>Al Hilal is a corporate entity with a mandate to provide Islamic financial advisory services and is the leading player in Shariah certification market in Pakistan. Shariah Supervisory Council of Al Hilal is composed of several renowned Shariah Scholars belonging to different schools of thought who are well versed in the field of Islamic Jurisprudence and Finance.
</strong></p>
<img src="images/sh-board.png" class="sh-board-main" style="margin-top:0 !important;" alt="">


</div>
<img src="images/sh-board2.png" style="margin-top:-800px !important;" alt="" data-animate="fadeInRight">
</section>
<!-- Corporate Presentation End-->

<!-- Risk Profiler Start-->

<section data-transition="concave" data-background="./images/intro-img.png" data-background-repeat="no-repeat" data-background-position="top center" data-background-size="100%">

<div id="tittle-page">
<img data-transition="concave" data-animate="fadeInUp" src="./images/hbl-logo.png" alt="">
<h4 data-animate="fadeInUp">Risk Profiler</h4>
</div>
</section >


<section id="fragments" data-transition="slide" data-state="vali" data-prevent-swipe>
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>


<div class="col-lg-10 risk-profiler" style="margin:0 auto; background:#f5f5f5; border:1px solid #d3d2d2;">
<p >HBL Asset Management’s Risk Assessment Questionnaire guides you to the best investment strategy that you can rely on and let your investment work hard to achieve your objective.</p>

<p>By answering few questions, we can help you choose the best mutual fund or investment plan depending on your risk appetite.</p>
<hr>
<form method="POST" action="save_risk_profile">
{{csrf_field()}}
<label>Name</label>
<input id="cn" name="client_name" type="text">
<p id="n_field" class="field-error" style="display:none;">Name field is required.</p>
<label>Email Address</label>
<input id="ce" name="client_email" type="email">
<p id="e_field" class="field-error" style="display:none;">Email field is required.</p>
<label>Cell Number</label>
<input id="cnu" name="client_number" type="number">
<p id="cn_field" class="field-error" style="display:none;">Number field is required.</p>
<label>CNIC</label>
<input id="cni" name="client_cnic" type="text">




<br/><input ontouchstart="myFunction()"  click="myFunction()"  class="button1 nextBtn enabled myvalidate" type="button" value="Next">
</div>
</section>





<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>


<div class="col-lg-8 risk-profiler" style="margin:0 auto;">
<p>&nbsp;</p>
<p style="color: #191919;"> Please answer the following questions as candidly as you can. Your answers will help us determine the most suitable asset allocation model for you.</p>
<hr>

<h6>1) Please mention the age bracket you fall in:</h6>
<ul>
<li>
  
    <label class="control control--radio">Above 61 years
    <input type="radio" name="q1" id="age1" value="-2" checked>
            <div class="control__indicator"></div>
        </label>  
</li>
<li>
<label class="control control--radio"> 55 - 60 years
<input type="radio" name="q1" id="age1" value="-1">
            <div class="control__indicator"></div>
        </label>  
</li>
<li>
<label class="control control--radio"> 40 - 54 years
<input type="radio" name="q1" id="age1" value="0">
            <div class="control__indicator"></div>
        </label>      
 </li>
<li>
<label class="control control--radio">   25 - 39 years
<input type="radio" name="q1" id="age1" value="1">
            <div class="control__indicator"></div>
        </label>    
   
</li>
<li><label class="control control--radio"> Less than 25 years
<input type="radio" name="q1" id="age1" value="2">
            <div class="control__indicator"></div>
        </label>    
</li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>

</ul>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>2) I plan to keep my investment for:</h6>
<ul>
<li><label class="control control--radio">Less than a year<input type="radio" name="q2" id="age2" value="-2"  checked> <div class="control__indicator"></div></label> </li>
<li><label class="control control--radio">1 - 3 years<input type="radio" name="q2" id="age2" value="-1"> <div class="control__indicator"></div></label> </li>
<li><label class="control control--radio">3 - 5 years<input type="radio" name="q2" id="age2" value="0"> <div class="control__indicator"></div></label> </li>
<li><label class="control control--radio">5 - 10 years<input type="radio" name="q2" id="age2" value="1"> <div class="control__indicator"></div></label> </li>
<li><label class="control control--radio">More than 10 year<input type="radio" name="q2" id="age2" value="2"> <div class="control__indicator"></div></label> </li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>3) I have enough savings to support my lifestyle for:</h6>
<ul>
<li><label class="control control--radio"> Up to 3 months<input type="radio" name="q3" id="age3" value="-2"  checked><div class="control__indicator"></div></label> </li>
<li><label class="control control--radio"> Up to 6 months<input type="radio" name="q3" id="age3" value="-1"><div class="control__indicator"></div></label> </li>
<li><label class="control control--radio"> Up to 1 year<input type="radio" name="q3" id="age3" value="0"><div class="control__indicator"></div></label> </li>
<li><label class="control control--radio"> 1 - 3 years<input type="radio" name="q3" id="age3" value="1"><div class="control__indicator"></div></label> </li>
<li><label class="control control--radio"> Over 3 years<input type="radio" name="q3" id="age3" value="2"><div class="control__indicator"></div></label> </li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>4) I would like my financial goals to be attained in:</h6>
<ul>
<li><label class="control control--radio"><input type="radio" name="q4" id="age4" value="-2"  checked> Less than a year<div class="control__indicator"></div></label></li>
<li><label class="control control--radio"><input type="radio" name="q4" id="age4" value="-1"> 1 - 3 year<div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> <input type="radio" name="q4" id="age4" value="0"> 3 - 5 year<div class="control__indicator"></div></label></li>
<li><label class="control control--radio"><input type="radio" name="q4" id="age4" value="1"> 5 - 10 years<div class="control__indicator"></div></label></li>
<li><label class="control control--radio"><input type="radio" name="q4" id="age4" value="2"> More than 10 year<div class="control__indicator"></div></label></li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>5) I can relate myself to the following statement:</h6>
<ul>
<li><label class="control control--radio"> I cannot bear any capital loss<input type="radio" name="q5" id="age5" value="-2"  checked><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> I will redeem my entire investment amount if I incur 5% loss<input type="radio" name="q5" id="age5" value="-1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> I will wait for my investment to appreciate if I incur 10% loss<input type="radio" name="q5" id="age5" value="0"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> I have other sources of income to maintain my lifestyle<input type="radio" name="q5" id="age5" value="1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> I will invest on long term basis and will make additional
investments when the price falls<input type="radio" name="q5" id="age5" value="2"><div class="control__indicator"></div></label></li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>6) For further investment I intend to take:</h6>
<ul>
<li><label class="control control--radio"> No risk<input type="radio" name="q6" id="age6" value="-2"  checked><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Slight risk with reasonable return and principal protection<input type="radio" name="q6" id="age6" value="-1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Moderate risk with higher than average return<input type="radio" name="q6" id="age6" value="0"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Moderate to high risk for potential greater returns<input type="radio" name="q6" id="age6" value="1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> High risk for superior returns<input type="radio" name="q6" id="age6" value="2"><div class="control__indicator"></div></label></li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>7) If I incur substantial initial loss I would:</h6>
<ul>
<li><label class="control control--radio"> Redeem my investment<input type="radio" name="q7" id="age7" value="-2" checked><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Switch to safer and secure investment option<input type="radio" name="q7" id="age7" value="-1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Hold my investment and decide later<input type="radio" name="q7" id="age7" value="0"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Observe economic situation and market outlook<input type="radio" name="q7" id="age7" value="1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Continue with my investment plan<input type="radio" name="q7" id="age7" value="2"><div class="control__indicator"></div></label></li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>8) I usually invest/keep my money in:</h6>
<ul>
<li><label class="control control--radio"> Current Accounts<input type="radio" name="q8" id="age8" value="-2" checked><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> PLS/Savings/TDR's<input type="radio" name="q8" id="age8" value="-1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Fixed Income Mutual Fund/National Savings
Schemes/Prize Bond<input type="radio" name="q8" id="age8" value="0"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Stock/Share/Equity based mutual fund<input type="radio" name="q8" id="age8" value="1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Real Estate<input type="radio" name="q8" id="age8" value="2"><div class="control__indicator"></div></label></li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>9) Preferred Product Type:</h6>
<ul>
<li style="color: #ffc807; font-weight: 500;"> Conventional</li>
<li><label class="control control--radio">Conventional Fund<input type="radio" name="q9" id="conventional" value="conventional" checked><div class="control__indicator"></div></label</li>
<li style="color: #ffc807; font-weight: 500;"> Islamic</li>
<li><label class="control control--radio"> Islamic Fund<input type="radio" name="q9" id="islamic" value="islamic"><div class="control__indicator"></div></label</li>
<li style="color: #ffc807; font-weight: 500;"> OR</li>
<li><label class="control control--radio"> Any<input type="radio" name="q9" id="any" value="any"><div class="control__indicator"></div></label</li>
<li>&nbsp;</li>
<li><input class="tch button2 nextBtn navigate-right  enabled" id="submitButton" onClick="submitQuiz()" type="submit" value="Next"></li>
</ul>
<p>&nbsp;</p>

</div>
</section>
<input id="location" name="location" value type="hidden"/>
<input id="choosen_fund" name="choosen_fund" type="hidden"/>
<input id="user_id" name="user_id" value="{{ Auth::user()->id }}" type="hidden"/>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto; background:none;">

<p id="pns" style="font-size:25px;">Recommended Funds</p>
<span style="display:none !important; width:auto; padding:20px 50px; font-size:25px; background:#01a896; color:#fff; border-radius:10px;    display: block;
width: 80%; margin:0 auto;" id="userScore">
<input id="value_for_userScore" name="userScore" type="hidden"></span>
<div id="con"  style="margin:auto; display:none;" class="col-sm-6">

<select  id="crf"  name="crf" class="form-control test">

<option  value="">Select Fund</option>

<option  id="con1"></option>
<option  id="con2"></option>
<option  id="con3"></option>
</select>
</div>
<br>
<div id="isl" style="margin:auto; display:none;" class="col-sm-6">
<select  id="irf"   name="irf" class="form-control test">
<option  value="">Select Fund</option>

<option  id="isl1"></option>
<option  id="isl2"></option>
<option  id="isl3"></option>
</select>
</div>


<p style="font-size:25px; padding:40px; color:#01a896;">
<input id="rec" required name="decision" value="I agree I will go with above recommended product 
"  type="radio" style="width:30px; height:20px; border:2px solid #01a896; margin-top:20px;">
I agree I will go with above recommended product
<br>
<input id="risk" required name="decision" value="Or Choose Another Product at My Own Risk"  type="radio" style="width:30px; height:20px; border:2px solid #01a896; margin-top:20px;">
Or Choose Another Product at My Own Risk
</p>


<!-- @if(count($errors) > 0)
<ul>
@foreach($errors->all() as $error)
<li class="alert alert-danger">{{$error}}</li>
@endforeach	
</ul>
@endif	 -->

</div>
<br>
<center><div class="col-sm-2">
<input style="font-size:21px; color:#fff; background:#01a896;" class="form-control" type="submit" value="Submit">
</div>
</center>
</section>


</form>

<!-- Risk Profiler End-->

<!-- Mutual Funds and Plans Start-->
<!--<section data-transition="concave" data-background="./images/intro-img.png" data-background-repeat="no-repeat" data-background-position="top center" data-background-size="100%">

<div id="tittle-page">
<img data-transition="concave" data-animate="slideleft" src="./images/hbl-logo.png" alt="">
<h4>Our Mutual Funds and Plans</h4>
<p style="font-size:25px;">As of December, 2017</p>
</div>	
</section >
-->
<!-- Mutual Funds and Plans End-->

</div>


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
<p>	 <a href="{{ route('logout') }}"
onclick="event.preventDefault();
        document.getElementById('logout-form').submit();">
        <i class="fa fa-sign-out"></i>Logout &nbsp;</a>
<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
{{ csrf_field() }}
</form>
</p>
</div>
</footer>
<script src="{{asset('lib/js/head.min.js')}}"></script>
<script src="{{asset('js/reveal.js')}}"></script>
<script src="{{asset('js/fe_wow.min.js')}}"></script>

<!-- Bootstrap core JavaScript -->
<script src="{{asset('vendor/jquery/jquery.min.js')}}"></script>
<script src="{{asset('vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>

<script>

//$('input[type="text"],input[type="radio"]').prop('required',true);
$('#submitButton').on('touchstart click', function(){
submitQuiz(); 
});


$('#btn').on('touchstart click', function(){
alert()
});


function submitQuiz() {
console.log('submitted');

// get each answer score

function answerScore (qName) {
var radiosNo = document.getElementsByName(qName);

for (var i = 0, length = radiosNo.length; i < length; i++) {
if (radiosNo[i].checked) {
// do something with radiosNo
var answerValue = Number(radiosNo[i].value);
}
}
// change NaNs to zero
if (isNaN(answerValue)) {
answerValue = 0;
}
return answerValue;
}

var calcScore = (answerScore('q1') + answerScore('q2') + answerScore('q3') + answerScore('q4') + answerScore('q5') + answerScore('q6')
+ answerScore('q7') + answerScore('q8'));


var r = document.getElementsByName('q9');
var v = '';
var p1 = p2 = p3 = p4 = p5 = p6 = '';
var i1 = i2 = i3 = '';
var c1 = c2 = c3 = '';
var r1 = r2 = '';
var f1 = f2 = '';



for (var i = 0, length = r.length; i < length; i++) {
if (r[i].checked) {
v = r[i].value;
console.log(v);
}
}
//Test
//calcScore = -12;


if (calcScore >= -20 && calcScore <= -12) {
c1  = 'Money Market Fund';
c2 = 'Cash Fund';
}
else if(calcScore >= -11 && calcScore <= -6)
{
c1 = "Income Fund";
c2 = "Government Securities Fund";
}
else if(calcScore >= -5 && calcScore <= 0)
{
c1 = "FPF Conservative Plan";
}
else if(calcScore >= 1 && calcScore <= 6)
{
c1 = "Multi Asset Fund";
}
else if(calcScore >= 7 && calcScore <= 12)
{
c1 = "FPF Multi Allocation Plan";
}
else if(calcScore >= 13 && calcScore <= 20)
{
c1 = "Stock Market Fund";
c2 = "Energy Fund";
}
else{
c = "-";
}
if (calcScore >= -20 && calcScore <= -12) {
i1 = "Islamic Money Market Fund";
}
else if(calcScore >= -11 && calcScore <= -6)
{
i1 = "Islamic Income Fund";
}
else if(calcScore >= -5 && calcScore <= 6)
{
i1 = "Islamic Asset Allocation Fund";
i2 = "IFPF Conservative Plan";
}
else if(calcScore >= 7 && calcScore <= 12)
{
i1 = "IFPF Active Allocation Plan";
}
else if(calcScore >= 13 && calcScore <= 20)
{
i1 = "Islamic Stock Fund";
i2 = "Equity Fund";
i3 = "Islamic Equity Fund";
}
else{
i = "-";
}

if(v == "conventional")
{
p1 = c1;
p2 = c2;
p3 = c3;

if(c1 == ''){
        $('#con1').hide();
}
if(c2 == ''){
        $('#con2').hide();
}
if(c3 == ''){
        $('#con3').hide();
}
$('#con1').text(c1);
$('#con2').text(c2);
$('#con3').text(c3);
$('#con1').val(c1);
$('#con2').val(c2);
$('#con3').val(c3);
$('#con').show();
$('#isl').hide();

}

else if(v == "islamic")
{

p4 = i1;
p5 = i2;
p6 = i3;
if(i1 == ''){
        $('#isl1').hide();
}
if(i2 == ''){
        $('#isl2').hide();
}
if(i3 == ''){
        $('#isl3').hide();
}
$('#isl1').text(i1);
$('#isl2').text(i2);
$('#isl3').text(i3);
$('#isl1').val(i1);
$('#isl2').val(i2);
$('#isl3').val(i3);
$('#con').hide();
$('#isl').show();

}

else if(v == "any")
{

p1 = c1;
p2 = c2;
p3 = c3;
p4 = i1;
p5 = i2;
p6 = i3;
if(c1 == ''){
        $('#con1').hide();
}
if(c2 == ''){
        $('#con2').hide();
}
if(c3 == ''){
        $('#con3').hide();
}
if(i1 == ''){
        $('#isl1').hide();
}
if(i2 == ''){
        $('#isl2').hide();
}
if(i3 == ''){
        $('#isl3').hide();
}

$('#con1').text(c1);
$('#con2').text(c2);
$('#con3').text(c3);
$('#con1').val(c1);
$('#con2').val(c2);
$('#con3').val(c3);
$('#isl1').text(i1);
$('#isl2').text(i2);
$('#isl3').text(i3);
$('#isl1').val(i1);
$('#isl2').val(i2);
$('#isl3').val(i3);
$('#con').show();
$('#isl').show();
}

else
{
var check = "Product Not Selected";
$('#pns').text(check);
}

$('#crf').on('touchstart click', function(){
	        $('#choosen_fund').val($('#crf').val());      

});
$('#irf').on('touchstart click', function(){
	        $('#choosen_fund').val($('#irf').val());      

});

/////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////

//$('#rf').val(p);

//// fg logics

//if(p == 'Multi Asset Fund'){

//$(".recommended_fund_link").attr("href", "maf");

//}
//if(p == 'Islamic Money Market Fund'){

//$(".recommended_fund_link").attr("href", "immf");
//}
//if(p == 'Islamic Income Fund'){
//$(".recommended_fund_link").attr("href", "iif");
//}
//if(p == 'Islamic Asset Allocation Fund or IFPF Conservative Plan'){
//$(".recommended_fund_link").attr("href", "iaaf");
//}		
//if(p == 'IFPF Active Allocation Plan'){
//$(".recommended_fund_link").attr("href", "ifpf");
//}

//// fg logics end
}

// Set animation delay if data-delay is specified
Reveal.addEventListener('ready', function ( event ) {
$('*[data-delay]').each( function () {
var delay = $(this).attr("data-delay");
$(this).css("-webkit-animation-delay", delay+"s");
$(this).css("animation-delay", delay+"s");
});
});

// Set animation duration if data-duration is specified
Reveal.addEventListener('ready', function ( event ) {
$('*[data-duration]').each( function () {
var duration = $(this).attr("data-duration");
$(this).css("-webkit-animation-duration", duration+"s");
$(this).css("animation-duration", duration+"s");
});
});

// Animate items that are not in a fragment
Reveal.addEventListener('slidechanged', function( event ) {
// Animate elements that are not a fragment (or in a fragment)
var filter = '*[data-animate]:not(.fragment):not(.fragment *)';

$(event.currentSlide).find(filter).each( function () {
$(this).addClass('animated');
$(this).addClass($(this).attr('data-animate'));
});
$(event.previousSlide).find(filter).each( function () {
$(this).removeClass('animated');
$(this).removeClass($(this).attr('data-animate'));
});
});

// Animate fragments
Reveal.addEventListener('fragmentshown', function( event ) {
function loop(i, el) {
if ($(el).attr('data-animate')) {
$(el).addClass('animated');
$(el).addClass($(el).attr('data-animate'));
}
$.each($(el).children().not('.fragment'), loop);
};
$.each(event.fragments, loop);
});

// Make the animation runnable again if fragment is hidden
Reveal.addEventListener('fragmenthidden', function( event ) {
function loop(i, el) {
if ($(el).attr('data-animate')) {
$(el).removeClass('animated');
$(el).removeClass($(el).attr('data-animate'));
}
$.each($(el).children().not('.fragment'), loop);
};
$.each(event.fragments, loop);
});


// More info about config & dependencies:
// - https://github.com/hakimel/reveal.js#configuration
// - https://github.com/hakimel/reveal.js#dependencies
Reveal.initialize({
// The "normal" size of the presentation, aspect ratio will be preserved
// when the presentation is scaled to fit different resolutions. Can be
// specified using percentage units.
width: 1920,
height: 970,



// Factor of the display size that should remain empty around the content
margin: -0.05,

// Bounds for smallest/largest possible scale to apply to content
minScale: 0.2,
maxScale: 1.5,
dependencies: [
{ src: 'plugin/markdown/marked.js' },
{ src: 'plugin/markdown/markdown.js' },
{ src: 'plugin/notes/notes.js', async: true },
{ src: 'plugin/chart/Chart.min.js' },
{ src: 'plugin/chart/csv2chart.js' },
{ src: 'plugin/highlight/highlight.js', async: true, callback: function() { hljs.initHighlightingOnLoad(); } }
]
});

/// code for geo location

if (navigator.geolocation) {
navigator.geolocation.getCurrentPosition(showPosition);
} else { 
x.innerHTML = "Geolocation is not supported by this browser.";
}


function showPosition(position) {
var lat =  position.coords.latitude;
var lng = position.coords.longitude;	
var xhr = new XMLHttpRequest();
xhr.onreadystatechange = function() {
if (this.readyState == 4 && this.status == 200) {
var arr = JSON.parse(this.responseText);
var data = arr.results[0].address_components;
var loc = data[0].long_name+ ' ' + data[1].long_name + ' ' + data[3].long_name + ', ' + data[4].long_name + ' ' + data[5].long_name ;
$('#location').val(loc);
$('#longitude').val(lng);
$('#latitude').val(lat);

console.log(loc)
}
};
xhr.open("GET", "https://maps.google.com/maps/api/geocode/json?latlng="+lat+","+lng+"&sensor=true&key=AIzaSyAauxe658vX6Gua6-oDfPPhq2qi1rT7eac");
xhr.send();

}
/// code for geo location end



/// hide product menu from footer on index and products page

var index_url = "{{url('welcome')}}";
var products_url = "{{url('products')}}";
var default_url = window.location.href.toString();
if(index_url == default_url || products_url == default_url ){
   $('.all_products').hide();
}

Reveal.addEventListener( 'vali', function() {

$('aside.controls').hide();

}, false );
function myFunction() {



    var cn = $("#cn").val();
    var ce = $("#ce").val();
    var cnu = $("#cnu").val();
    if(cn == '' &&  ce == '' &&  cnu == ''){
      $('#n_field,#e_field,#cn_field').show();
    }

    else if(cn == '' &&  ce == ''){
        $('#n_field,#e_field').show();

        $('#cn_field').hide();


    }
    else if(cn == '' &&  cnu == ''){
        $('#n_field,#cn_field').show();
        $('#e_field').hide();
    }

    else if(ce == '' &&  cnu == ''){
        $('#e_field,#cn_field').show();
        $('#n_field').hide();
    }

    else if(cn == ''){
        $('#n_field').show();
        $('#e_field,#cn_field').hide();
    }

    else if(ce == ''){
        $('#e_field').show();
        $('#n_field,#cn_field').hide();
    }

    else if(cnu == ''){
        $('#cn_field').show();
        $('#n_field,#e_field').hide();
    }
   
    else{
        $('#n_field,#e_field,#cn_field').hide();
        $('aside.controls').show();
       Reveal.next();

    }
}



/// hide product menu from footer on index and products page end
</script>



</body>
</html>