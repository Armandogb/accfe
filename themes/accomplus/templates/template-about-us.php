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
								<div class="leader-image">
								</div>
							</div>
							<div class="leader-info">
								<h3><?php echo $leader['leader_name']; ?></h3>
								<h4><?php echo $leader['leader_title']; ?></h4>
								<p><?php echo $leader['leader_bio']; ?></p>
								<div class="links">
									<a href="/">READ MORE</a>
									<a href="/">CONTACT</a>
								</div>
							</div>
						</div>
					<?php endforeach; ?>
			</section>


		