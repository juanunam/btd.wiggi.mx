<?php

	require_once($_SERVER['DOCUMENT_ROOT'].'/php/services/server.php');

	$return = array('status' => 0, 'data' => array());
	

	function getAllBots() {
		$server = new server();
			//Define return
		$return2 = array('status' => 0, 'data' => array());
			//Connect to the dataBase
		$dataBase = $server->getDatabase();
			//Define query
		$query = 'CALL PRO_GetAllBots()';
			//Execute query
		$result = $dataBase->query($query);
			//Validate the response
		if($result) {
				//Return status one
			$return2['status'] = 1;
				//Validate the response's size
			if($result->num_rows) {
					//Get the contacts
				while($row = $result->fetch_assoc()) {
						//Return the contacts as data
					$return2['data'][] = array(	
						'name'		=> $row['VCH_Name'],
						'description'		=> $row['VCH_Description'],
						'id'	=> $row['INT_Bot']
						);
				}
			}
		}
			//Close the dataBase connection
		$dataBase->close();
			//Return
			
		return $return2;
	}
	
		if($_GET['command'] == 'getAllBots'){
			$return = getAllBots();
		}

	print(json_encode($return));

?>