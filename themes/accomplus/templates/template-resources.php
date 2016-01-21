<?php
/**
 * Template Name: Resources
 */
?>

<?php

if( have_posts() ){
	while(have_posts() ){
		the_post();
?>

	<section class="main-mission main-pad">
			<div class="mission-blurb">
				<?php wp_list_pages(); ?> 
			</div>
	</section>



<?php
		}
	}

?>