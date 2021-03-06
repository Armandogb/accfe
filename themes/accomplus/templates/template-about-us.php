<?php
/**
 * Template Name: About Us
 */
?>

			<section class="spread-banner main-pad">
				<div class="banner blurb">
					<h1><?php echo get_field("banner_title"); ?></h1>
					<p><?php echo get_field("banner_blurb"); ?></p>
				</div>
				<div class="banner-shape">	
				</div>
			</section>
			<section class="page-text main-pad">
				<div class="blurb con">				
					<p><?php echo get_field("blurb_content"); ?></p>
				</div>
			</section>
			<section class="management-collect main-pad">

					<?php

						$repeat = get_field('leadership');

						foreach($repeat as $leader):
					?>

						<div class="leader-profile">
							<div class="leader-image-con">
								<div class="leader-image" style="
								background: url(<?php echo $leader['leader_image']; ?>) no-repeat center center; 
							  	-webkit-background-size: cover;
							 	-moz-background-size: cover;
							  	-o-background-size: cover;
							  	background-size: cover;
								height:0;
								width:100%;
								padding-top: 128.2%;">
								</div>
							</div>
							<div class="leader-info">
								<h3><?php echo $leader['leader_name']; ?></h3>
								<h4><?php echo $leader['leader_title']; ?></h4>
								<div class="links">
									<p class="closed"><?php echo $leader['leader_bio']; ?></p>
									<a class="leader-rm" href="/">READ MORE</a>
									<a class="email-hov" href="/">CONTACT</a>
									<div class="email-box">
										<div class="up-shape">	
										</div>
										<div class="blocker-shape">	
										</div>
										<a href="/">sample@email.com</a>
									</div>
								</div>
							</div>
						</div>
					<?php endforeach; ?>
			</section>


		