<?php
define("USERAPP", $argv[1]);
define("PASSWORDAPP", $argv[2]);
require_once "config/myDBC3.php";
require_once "config/dbconfig3.php";

$token = shell_exec("curl --request POST -d '{ \"username\":\"".USERAPP."\", \"password\":\"".PASSWORDAPP."\"}' ".URLTOKEN);


$curl = 'curl --request POST -H "Authorization: '.$token.'" '.URLPAGOS;

$json = shell_exec($curl);
$json2 = json_decode($json,true);
$obj = json_decode($json2);

for($i=0; $i< count($obj); $i++){

	echo $obj[$i]->x_transaction_date.",".$obj[$i]->x_plan.",".$obj[$i]->x_periodo;

}

?>


