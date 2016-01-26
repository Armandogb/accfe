
			<header>
				<div class="contact-bar main-pad">
					<ul>
						<li><strong><?php echo get_field("phone_number",57); ?></strong></li>
						<li class="t-links">CONTACT US</li>
						<li class="t-links">LOG IN</li>
					</ul>
				</div>
				<div class="logo-bar main-pad">
					<a href="/"><div class="logo">
					</div></a>
				</div>
				<div class="nav-bar main-pad">
					<?php wp_nav_menu( array( 'theme_location' => 'primary_navigation' ) ); ?>
					<div class="search">
						<input placeholder="Search">
						<i class="fa fa-search"></i>
					</div>
				</div>
			</header>

