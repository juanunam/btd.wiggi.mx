<?php 

 
  
    
if($dataBase = new mysqli('127.0.0.1', 'USR_BTD', 'W1G1_BTD', 'db_btd')){
    echo 'conección exitosa';
}

			$dataBase->query('SET CHARACTER SET utf8');
         
      
   

			$query = "SELECT * FROM tbl_bots";
		
			$result = $dataBase->query($query);
                
			
			if($result) {
			echo 'entro a uno';
                echo $result->num_rows;
				if($result->num_rows) {
                    echo 'entro a dos';
					
					while($row = $result->fetch_assoc()) {
						
						$data = array(	'id'		=> intval($row['INT_Bot']),
                                        'user'		=> intval($row['INT_User']),
													'engine'		=> $row['INT_Engine'],
													'calls'		=> $row['int_Calls'],
													'name'	=> $row['VCH_Name'],
													'json'	=> $row['TXT_Json'],
													'description'	=> $row['VCH_Description'],
													'change'	=> $row['DTT_Change'],
													'create'	=> $row['VCH_Create'],
													'active'	=> $row['TYI_Active'],
                                      
													'staticPayment'	=> boolval($row['TYI_StaticPayment']),
													'amount'	=> floatval($row['DML_Amount'])
												);
                        var_dump($data); 
                     print_r ($data);
					}
				}
			}
			
			$dataBase->close();
			

?>
