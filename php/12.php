
<?php
var_dump($_POST);
exit;
    $input = str_split($_POST["input"]," "); 
    $result = array("data" => array(),"result"=> 0);

        if(array_search($input,"como") || array_search($input,"me") || array_search($input,"llamo") ||  0 ){

            array_push($result["data"],"Tu nombre es juan");
}else{

            array_push($result["data"],"No me se tu nombre");
}
$result["result"]=1;
echo json_encode($result);

?>
