<?php
/**
 * Created by PhpStorm.
 * User: jcrunge
 * Date: 08/07/20171
 * Time: 03:36 PM
 */

$type = array("if", "while", "do", "for" );
$input = "dos cuatro";
$fruits = array (
    "type"=>"if",
    "keywords" => array("dos","cuatro","tres"),
    "nodes" => array()
);
$copy = array (
    "type"=>"if",
    "keywords" => array("fdsdfs","cuatro","tres"),
    "nodes" => array()
);
$fruits2 = array (
    "type"=>"output",
    "out"=>"felicidades ",
    "keywords" => array("cinco","cuatro","tres"),
    "nodes" => array()
);

$code = '
<?php
    $input = str_split($_POST["input"]," "); 
    $result = array("data" => array(),"result"=> 0);
';
function recursiva(&$nodes,&$code,&$input){
    //print_r($nodes);
    if($nodes['type'] == "if"){
        $code=$code."
        if(";
        foreach ($nodes['keywords'] as $index => $value){
            $code=$code.'array_search($input,"'.$value.'") || ';
        }
        $code=$code." 0 ){\n";
    }
    foreach ($nodes['nodes'] as  $index => $node){
        if($node['type'] == "output"){
            //$code=$code."<br/>";
            $code=$code.'
            array_push($result["data"],"'.$node['out'].'");';
        }
        //print_r($nodo);
        if(array_key_exists("nodes",$node) and sizeof($node['nodes'])>0){
            recursiva($node,$code,$input);
        }
    }
    $code=$code."\n}";
}
    $copy['nodes'][] = $fruits2;
    $fruits['nodes'][] = $copy;
    //print_r($fruits);
    echo "<br/>";
    $srz=  json_encode($fruits);
    $decode = json_decode($srz,true);
    //print_r($decode);
    recursiva($decode,$code,$input);
    $code = $code. ' return $result;';
    print($code);

    $file = fopen("code.php", "w");
    fwrite($file, $code . PHP_EOL);
    fwrite($file, "?>".PHP_EOL);
    fclose($file);
?>