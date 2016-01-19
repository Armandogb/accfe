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
			add_menu_page( 'Agb Api', 'Agb Api', 'manage_options', 'agb-api', array(&$this, 'agb_api_user_page'),'<div id="icon-edit" class="icon32"></div>');
		}

		function register_options() {
			register_setting( self::slug."_settings", self::slug."_endpoint");
		}

	}

	$url = "http://il.leagueinfosight.com/client/infosight/il/list.php";

	$csv = file_get_contents($url);
	$lines = explode(PHP_EOL, $csv);
 	$data=[];
 	$final_pages = [];
	$id_holder =[1];
	$final=[];

 	foreach ($lines as $line) {
   	 $data[] = str_getcsv($line);
	}
	
	$headers = array_slice($data, 0,1);
	unset($data[0]);
	$parsed_data = array_values($data);


	foreach($parsed_data as $array){

		$copy = $headers[0];
		$result = array_combine($copy, $array);

		array_push($final, $result);
	}


	foreach($final as $entry){

		if(!in_array($entry['ID'],$id_holder)){
			
			array_push($id_holder, $entry['ID']);
			array_push($final_pages, $entry);

		};
	}

/*	str_replace('https://', 'http://', $final[0]['APILink'] );*/



?>