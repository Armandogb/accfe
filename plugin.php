<?php

	$url = "http://il.leagueinfosight.com/client/infosight/il/list.php";

	$csv = file_get_contents($url);
	$lines = explode(PHP_EOL, $csv);
 	$data=[];

 	foreach ($lines as $line) {
   	 $data[] = str_getcsv($line);
	}
	
	$headers = array_slice($data, 0,1);
	unset($data[0]);
	$parsed_data = array_values($data);

	 $final=[];

	foreach($parsed_data as $array){

		$copy = $headers[0];
		$result = array_combine($copy, $array);

		array_push($final, $result);
	}

	print_r($final);

?>