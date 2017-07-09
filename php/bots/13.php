
<?php
    $input = explode(" ",$_POST["input"]); 
    $result = array("data" => array(),"result"=> 0);

 $counter=0;
 foreach(['pohjoawndapo','que','te','gusta'] as  $index => $value){
 if(in_array($value,$input)){
$counter++;
} }
 if($counter/3 > 0.5){ 
            array_push($result["data"],"Me gusta tocar la bateria y cantar (y programar)");
}else{

}

 $counter=0;
 foreach(['pohjoawndapo','donde','estudiaste','universidad'] as  $index => $value){
 if(in_array($value,$input)){
$counter++;
} }
 if($counter/3 > 0.5){ 
            array_push($result["data"],"Estudie en la Fes Acatlan, la licenciatura en matematicas aplicadas");
}else{

}

 $counter=0;
 foreach(['pohjoawndapo','tu','color','favorito'] as  $index => $value){
 if(in_array($value,$input)){
$counter++;
} }
 if($counter/3 > 0.5){ 
            array_push($result["data"],"Es el azul");
}else{

}

 $counter=0;
 foreach(['pohjoawndapo','que','me','cuentas'] as  $index => $value){
 if(in_array($value,$input)){
$counter++;
} }
 if($counter/3 > 0.5){ 
            array_push($result["data"],"Me encanta mi empresa Wiggi");
}else{

}
$result["result"]=1;
echo json_encode($result);
?>
