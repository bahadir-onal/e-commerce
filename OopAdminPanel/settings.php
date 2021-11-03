<?php 
ob_start();
session_start();

require_once 'nedmin/netting/class.crud.php';
$db=new crud();


//1.Kullanım
 $sql=$db->read("settings");


//2.Özel Kullanım
//$sql=$db->qSql("SELECT * FROM settings WHERE settings_id='2'");



$row=$sql->fetchAll(PDO::FETCH_ASSOC);
foreach ($row as $key) {
	echo $settings[$key['settings_key']]=$key['settings_value']."<br>";

	//echo $key['settings_key']."-->".$key['settings_value']."<br>";

}



 ?>