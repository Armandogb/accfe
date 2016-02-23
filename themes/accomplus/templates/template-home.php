<?php
/**
 * Template Name: Home
 */
?>

		<section class="main-slider">
				<div class="caro">
					    <ul>  
       						<li id="1" class="slide 1" style="position:relative;  padding-top: 28.9%; display: block; background: url(<?php echo get_template_directory_uri() . '/dist/images/slide-1.png'; ?>) no-repeat center center;  background-size: cover; height:0; width:100%; opacity:1;"></li>  
        					<li id="2" class="slide 2" style="position:relative;  padding-top: 28.9%; display: none; background: url(<?php echo get_template_directory_uri() . '/dist/images/slide-2.png'; ?>) no-repeat center center;  background-size: cover; height:0; width:100%; opacity:0;"></li>  
        					<li id="3" class="slide 3" style="position:relative;  padding-top: 28.9%; display: none; background: url(<?php echo get_template_directory_uri() . '/dist/images/slide-3.png'; ?>) no-repeat center center;  background-size: cover; height:0; width:100%; opacity:0;"></li>  
        					<li id="4" class="slide 4" style="position:relative;  padding-top: 28.9%; display: none; background: url(<?php echo get_template_directory_uri() . '/dist/images/slide-4.png'; ?>) no-repeat center center;  background-size: cover; height:0; width:100%; opacity:0;"></li>   
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
					<div>
					    <ul>  
       						<li id="1" class="s-slide 1" style="display:block;">
       							<div class="ss-slide">
       								<h3>TRAINING</h3>
       								<p>BSA, financial skills, board workshops and more.</p>
       								<a href="/">GET TRAINED</a>
       								<div class="tracker">
       									<div></div>
       									<div></div>
       									<div></div>
       								</div>
       							</div>
       						</li>  
        					<li id="2" class="s-slide 2" style="display:none;">
        						<div class="ss-slide">
       								<h3>CONSULTING</h3>
       								<p>Need help with a Field of Membership expansion?</p>
       								<a href="/">LEARN MORE</a>
       								<div class="tracker">
       									<div></div>
       									<div></div>
       									<div></div>
       								</div>
       							</div>
       						</li>
        					<li id="3" class="s-slide 3" style="display:none;">
        					<div class="ss-slide">
       								<h3>REVIEWS</h3>
       								<p>Get a website or cybersecurity compliance review.</p>
       								<a href="/">START HERE</a>
       								<div class="tracker">
       									<div></div>
       									<div></div>
       									<div></div>
       								</div>
       							</div>
       						</li>      
   					 	</ul> 
<!--    					 	<div class="forward-but">
   					 		<i class="fa fa-chevron-right"></i>
   					 	</div>
   					 	<div class="back-but">
   					 		<i class="fa fa-chevron-left"></i>
   					 	</div> -->
					</div>
				</div>
			</section>
			<section class="services-sec main-pad">
				<div class="big-service">
					<div class="icon">
						<div class="user"></div>
					</div>
					<h3>OUR </br> STAFF</h3>
					<p>Experienced, driven and ready to help however we can.</p>
					<a href="/">STAY UP TO DATE</a>
				</div>
				<div class="big-service">
					<div class="icon">
						<div class="check"></div>
					</div>
					<h3>OUR SERVICES</h3>
					<p>A better operating environment is around the corner.</p>
					<a href="/">BROWSE</a>
				</div>
				<div class="small-service quest">
					<div class="icon">
						<h3>QUESTIONS?</h3>
					</div>
					<a href="/">CONTACT US</a>
				</div>
				<div class="small-service bot">
					<div class="icon">
						<h3>CALENDAR</h3>
					</div>
					<ul>
						<li>Security update</li>
						<li>IRS Form 5498</li>
					</ul>
					<a href="/">SEE ALL EVENTS</a>
				</div>
			</section>
	
