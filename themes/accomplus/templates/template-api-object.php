<?php
/**
 * Template Name: Api Page
 */
?>

<?php

if( have_posts() ){
	while(have_posts() ){
		the_post();
?>

	<section class="main-mission main-pad">
			<div class="mission-blurb">
				<?php the_content(); ?>
			</div>
	</section>



<?php
		}
	}

?>