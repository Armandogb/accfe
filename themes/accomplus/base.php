<?php

use Roots\Sage\Setup;
use Roots\Sage\Wrapper;

?>

<!doctype html>
<html <?php language_attributes(); ?>>
  <?php get_template_part('templates/head'); ?>
  <body <?php body_class(); ?> role="document">
      <section class="main-container">
        <?php
          if( have_posts() ){
            while(have_posts() ){
              the_post();

          do_action('get_header');
          get_template_part('templates/header');
        ?>

              <?php include Wrapper\template_path(); ?>
           
        <?php
          do_action('get_footer');
          get_template_part('templates/footer');
          wp_footer();

            }
          }
        ?>
      </section>
  </body>
</html>
