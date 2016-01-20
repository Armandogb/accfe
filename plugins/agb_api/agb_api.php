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

	class AgbApi{

		const name = 'Agb Api';
		const slug = 'agb_api';

		private $parsed_data =[];
		private $headers=[];
		private $id_holder =[];
		private $final=[];

		function __construct(){

			register_activation_hook( __FILE__, array( &$this, 'install_agb_api' ));

			add_action( 'init', array( &$this, 'init_agb_api' ));
			

			$end_point = esc_attr(get_option(AgbApi::slug.'_endpoint'));

	/*		self::run_it($end_point);*/

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
					<h1><?php echo self::name ?> Settings</h1>
					<form method="post" action="options.php">
					<?php settings_fields( self::slug."_settings" ); ?>
					<?php do_settings_sections(  self::slug."_settings" ); ?>
					<table class="form-table">
						<tr>
							<th>EndPoint</th>
							<td><input style="width:350px;" type="text" name="<?php echo self::slug.'_endpoint' ?>" placeholder="URL" value="<?php echo esc_attr(get_option(self::slug.'_endpoint')) ?>" /></td>
						</tr>
					</table>
					<?php submit_button(); ?>
					</form>
				</div>
			<?php
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

				$post = array(
				  'post_content'   => file_get_contents(str_replace('https://', 'http://', $arr['APILink'])),
				  'post_title'     => $arr['PageName'],
				  'post_status'    => 'publish' ,
				  'origin_id'      =>  $arr['ID']
 
				);

				wp_insert_post($post); 
			}


		}

		function run_it($e){
			self::get_data($e);
			self::key_data($this->parsed_data);
			self::fill_pages($this->final);
		}



	}

	

new AgbApi();

?>