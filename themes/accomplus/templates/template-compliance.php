<!-- COMPLIANCE PAGE -->

<?php
/**
 * Template Name: COMPLIANCE
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
						<h2><?php echo get_field("blurb_title"); ?></h2>
						<p><?php echo get_field("blurb_content"); ?></p>
					</div>
				</section>
				<section class="box-section">
					<?php

						$repeat = get_field('link_box');

						foreach($repeat as $link):
					?>

						<div class="link-box">
							<h3><?php echo $link['link_title']; ?></h3>
							<p><?php echo $link['link_blurb']; ?></p>
							<a href="<?php echo $link['link_url']; ?>">VIEW ALL</a>
						</div>

					<?php endforeach; ?>
				</section>
				