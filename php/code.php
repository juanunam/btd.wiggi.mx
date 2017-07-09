<?php

require_once($_SERVER['DOCUMENT_ROOT'].'/php/services/server.php');
$server = new server();
function recursiva(&$nodes,&$code){
    //print_r($nodes);
    $runner = 0;
    if($nodes['type'] == "if"){

        $code=$code."\n".' $counter=0;'."\n foreach(['pohjoawndapo'";
        foreach ($nodes['keywords'] as $index => $value){
            $code=$code.",'".$value."'";
        }
        $code=$code.'] as  $index => $value){'."\n".' if(in_array($value,$input)){'."\n".'$counter++;'."\n".'} }';
        $code=$code."\n if(".'$counter/'.sizeof($nodes['keywords']).' > 0.5){ ';
    }
    foreach ($nodes['nodes'] as  $index => $node){
        if($node['type'] == "output"){
            //$code=$code."<br/>";
            $code=$code.'
            array_push($result["data"],"'.$node['response'].'");';
        }
        //print_r($nodo);
        if(array_key_exists("nodes",$node) and sizeof($node['nodes'])>0){
            recursiva($node,$code);
        }
        if($nodes['type'] == "if" && $runner == 0){
        	$code=$code."\n}else{\n";
        }
        $runner++;
    }
    if($nodes['type'] == "if"){
    	$code=$code."\n}\n";
	}
}
$dady = [array(
	"type"=>"input",
	"nodes"=>array()
	)];
function iterate(&$nodes,&$actual,$indice){
	//var_dump($nodes);
	//var_dump($actual);
	//var_dump($indice);
	foreach ($nodes['links'] as $key => $value) {
		if($value['fromOperator'] == $indice ){
			
			$now = $nodes['operators'][$value['toOperator']]['properties'];
			//print_r($now);
			if ($now['type'] == "if"){

					array_push($actual['nodes'], array(
					"type" => $now['type'],
					"keywords" => $now['keywords'],
					"nodes" => array()
									));

			}
			if ($now['type'] == "output"){

					array_push($actual['nodes'], array(
					"type" => $now['type'],
					"response" => $now['response']));

			}
			/*if ($now['type'] == "multiplexor"){

					array_push($actual['nodes'], array(
					"type" => $now['type'],
					"nodes" => array()));

			}*/
			if ($now['type'] == "multiplexor"){
				iterate($nodes,$actual,$value['toOperator']);
			}else{
				iterate($nodes,$actual['nodes'][sizeof($actual['nodes'])-1],$value['toOperator']);
			}
			
		}
	}
}

iterate($_POST,$dady[0],0);
var_dump($dady);

$type = array("if", "while", "do", "for" );
$input = "dos cuatro";

$code = '
<?php
    $input = explode(" ",$_POST["input"]); 
    $result = array("data" => array(),"result"=> 0);
';


    
    recursiva($dady[0],$code);
    $code = $code. '$result["result"]=1;'."\n".'echo json_encode($result);';
    print($code);
    $bot = array("name" => $_GET['name'], "description" => $_GET['description']);
    $bot['data'] = json_encode($_POST);
    $query = "CALL PRO_AddBot('".$bot['name']."',1,200,1,'".$bot['data']."','".$bot['description']."');";
    $db = $server->getDatabase();
    $result =  $db->query($query);
    $row = $result->fetch_assoc();

    $file = fopen("bots/".$row['INT_Bot'].".php", "w");
    fwrite($file, $code . PHP_EOL);
    fwrite($file, "?>".PHP_EOL);
    fclose($file);
?>