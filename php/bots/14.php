
<?php
    $input = explode(" ",$_POST["input"]); 
    $result = array("data" => array(),"result"=> 0);

 $counter=0;
 foreach(['pohjoawndapo','marcas','que','manejan'] as  $index => $value){
 if(in_array($value,$input)){
$counter++;
} }
 if($counter/3 > 0.5){ 
            array_push($result["data"],"Manejamos sony, motorola, LG, iphone, entre otros.");
}else{

}

 $counter=0;
 foreach(['pohjoawndapo','pagos','aceptan','tarjeta'] as  $index => $value){
 if(in_array($value,$input)){
$counter++;
} }
 if($counter/3 > 0.5){ 
            array_push($result["data"],"SI aceptamos pagos con tarjeta BBVA, Santander entre otro.");
}else{

}

 $counter=0;
 foreach(['pohjoawndapo','localizacion','donde','encontrarlos'] as  $index => $value){
 if(in_array($value,$input)){
$counter++;
} }
 if($counter/3 > 0.5){ 
            array_push($result["data"],"<a target='_blank' href='https://goo.gl/maps/3nT66ZM3KF42'>link</a>");
}else{

}
$result["result"]=1;
echo json_encode($result);
?>
