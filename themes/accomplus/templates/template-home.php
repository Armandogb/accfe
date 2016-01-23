<?php
/**
 * Template Name: Home
 */
?>

		<section class="main-slider">
				<div class="caro">
					    <ul>  
       						<li id="1" class="slide 1" style="position:relative;  padding-top: 21.3%; display: block; background: url(<?php echo get_template_directory_uri() . '/dist/images/slide-1.png'; ?>) no-repeat center center;  background-size: cover; height:0; width:100%; opacity:1;"></li>  
        					<li id="2" class="slide 2" style="position:relative;  padding-top: 21.3%; display: none; background: url(<?php echo get_template_directory_uri() . '/dist/images/slide-2.png'; ?>) no-repeat center center;  background-size: cover; height:0; width:100%; opacity:0;"></li>  
        					<li id="3" class="slide 3" style="position:relative;  padding-top: 21.3%; display: none; background: url(<?php echo get_template_directory_uri() . '/dist/images/slide-3.png'; ?>) no-repeat center center;  background-size: cover; height:0; width:100%; opacity:0;"></li>  
        					<li id="4" class="slide 4" style="position:relative;  padding-top: 21.3%; display: none; background: url(<?php echo get_template_directory_uri() . '/dist/images/slide-4.png'; ?>) no-repeat center center;  background-size: cover; height:0; width:100%; opacity:0;"></li>   
   					 	</ul> 
   					 	<div class="forward-but">
   					 		<i class="fa fa-chevron-right"></i>
   					 	</div>
   					 	<div class="back-but">
   					 		<i class="fa fa-chevron-left"></i>
   					 	</div>
				</div>
				<div class="news-update main-pad">
					<p></p>
				</div>
			</section>
			<section class="main-mission main-pad">
				<div class="mission-blurb">
					<h2><?php echo get_field("blurb_title"); ?></h2>
					<p><?php echo get_field("blurb_content"); ?></p>
				</div>
				<div class="mission-menu">
				</div>
			</section>
			<section class="services-sec main-pad">
				<div class="big-service">
					<div class="icon">
						<div class="user-space"></div>
					</div>
					<h3>COMPLIANCE MANUAL</h3>
					<p>ere e wr  erewrewr er erer erewrewrewrewr ewrer ewr</p>
					<a href="/">STAY UP TO DATE</a>
				</div>
				<div class="big-service">
					<div class="icon">
						<div class="check-space"></div>
					</div>
					<h3>SMALL CU CENTER</h3>
					<p>wrewr ererewre rere rewrerer e er ew rer ewr ewrewrew </p>
					<a href="/">BROWSE</a>
				</div>
				<div class="small-service">
					<div class="icon">
						<p>NEWSLETTER</p>
					</div>
					<p>Get news when it breaks.</p>
					<a href="/">SIGN UP</a>
				</div>
				<div class="small-service bot">
					<div class="icon">
						<p>CALENDAR</p>
					</div>
					<ul>
						<li>Event 1</li>
						<li>Event 2</li>
						<li>Event 3</li>
					</ul>
				</div>
			</section>
	
