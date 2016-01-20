<?php

		/*
		Plugin Name: Agb_Api
		Plugin URI: http://cliquestudios.com
		Description: An api data parser and distributor.
		Version: 0.1
		Author: Armando Bulnes
		Author Email: armandogb@cliquestudios.com
		License:n/a
		*/
?>

<?php

	function user_check(){

    	if ( is_user_logged_in() == true ) {

    		if(isset($_POST['xxx'])) { 

				class PopPosts{


					private $parsed_data =[];
					private $headers=[];
					private $id_holder =[];
					private $final=[];
					private $origin_id = 'field_569ff22904fca';


					function __construct($url){

						add_action('init', array( &$this, self::run_it(str_replace('https://', 'http://', $url))));
					}


					function get_data($url){

						$data=[];
						$csv = file_get_contents($url);
						$lines = explode(PHP_EOL, $csv);

						 foreach ($lines as $line) {
			   				 $data[] = str_getcsv($line);
						}

						$this->headers = array_slice($data, 0,1);
						unset($data[0]);
						$this->parsed_data = array_values($data);	


					}

					function key_data($array){

						foreach($array as $arr){

							$copy = $this->headers[0];
							$result = array_combine($copy, $arr);
							array_push($this->final, $result);

						}

					}

					function fill_pages($array){

						foreach($array as $arr){
							
							$n_post = array(
							  'post_content'   => file_get_contents(str_replace('https://', 'http://', $arr['APILink'])),
							  'post_title'     => $arr['PageName'],
							  'post_type'        => 'page',
							  'post_status'    => 'publish',
							  'page_template'  => 'template-api-object.php' 
							);

							$mode = wp_insert_post($n_post);

							update_field($this->origin_id, $arr['ID'], $mode);
						}

					}

					function update_pages($array){

						$args = array(
							'post_type'        => 'page',
							'post_status'      => 'publish',
							'number'		   =>	10000					
						);

						$query = get_pages($args);

						foreach($query as $entry){
							$this->id_holder[the_field( $origin_id,$entry->ID )] = $entry->ID;
						}
					
						$keys = array_keys($this->id_holder);

						print_r($keys);
						echo"----------";


						/*foreach($array as $arr){
								
								$u_post = array(
									'ID'		=> $this->id_holder[$arr['ID']],
								  'post_content'   => file_get_contents(str_replace('https://', 'http://', $arr['APILink'])),
								  'post_title'     => $arr['PageName'],
								  'post_type'        => 'page',
								  'post_status'    => 'publish',
								  'page_template'  => 'template-api-object.php' 
								);

								$mode = wp_update_post($u_post);

								update_field($origin_id, $arr['ID'], $mode);
						}	*/
					}


					function run_it($e){

						self::get_data($e);
						self::key_data($this->parsed_data);

						if (isset($_POST['populate'])){

							self::fill_pages(array_filter($this->final));

						}elseif (isset($_POST['update'])){
							/*self::update_pages(array_filter($this->final));*/

						}

						header("Location: /wp-admin/admin.php?page=agb_api&m=Your%20posts%20have%20been%20created!");
					}


				}

				new PopPosts($_POST["xxx"]);
			} 

    	} 
	}

	add_action('init','user_check');
	
		

	class AgbApi{

		const name = 'Agb Api';
		const slug = 'agb_api';


		function __construct(){

			register_activation_hook( __FILE__, array( &$this, 'install_agb_api' ));

			add_action( 'init', array( &$this, 'init_agb_api' ));
			
		}

		function init_agb_api(){
			add_action( 'admin_init', array(&$this, 'register_options') );
			add_action( 'admin_menu', array( &$this, 'menu_boot' ));
		}

		function install_agb_api(){

		}


		function menu_boot() {
			add_menu_page( 'Agb Api', 'Agb Api', 'manage_options', 'agb_api',array(&$this, 'agb_api_user_page'),'dashicons-thumbs-down');
		}

		function register_options() {
			register_setting( self::slug."_settings", self::slug."_endpoint");
		}

		function agb_api_user_page(){
			?>

				<div class="wrap">
					<div>
						<h1 style="color:green;"><?php echo $_GET['m'];?></h1>
					</div>
					<h1><?php echo self::name ?> Settings</h1>
					<form method="post" action="options.php">
					<?php settings_fields( self::slug."_settings" ); ?>
					<?php do_settings_sections(  self::slug."_settings" ); ?>
					<table class="form-table">
						<tr>
							<th>EndPoint</th>
							<td><input style="width:450px;" type="text" name="<?php echo self::slug.'_endpoint' ?>" placeholder="URL" value="<?php echo esc_attr(get_option(self::slug.'_endpoint')) ?>" /></td>
						</tr>
					</table>
					<?php submit_button(); ?>
					</form>
					<form method="post" action="<?=$_SERVER['PHP_SELF'];?>">
						<input type="hidden" name="xxx" value="<?php echo esc_attr(get_option(self::slug.'_endpoint')) ?>">
						<input type="hidden" name="populate" value="yes">
						<input style="width:110px; height:50px; color:white; background:red; border-radius:5px;"type="submit" name="go" value="Populate" />
					</form>
					<form method="post" action="<?=$_SERVER['PHP_SELF'];?>">
						<input type="hidden" name="xxx" value="<?php echo esc_attr(get_option(self::slug.'_endpoint')) ?>">
						<input type="hidden" name="update" value="yes">
						<input style="width:110px; height:50px; color:white; background:purple; border-radius:5px;"type="submit" name="up" value="update" />
						<h3>(This may take a few minutes)</h3>
					</form>
				</div>
			<?php
		}


	}


	new AgbApi();


?>