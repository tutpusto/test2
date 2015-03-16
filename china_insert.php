<?php require_once 'china_login.php'; 
$db_server=mysql_connect($db_hostname,$db_username,$db_password);
if (!$db_server) die("Невозможно подключиться к MySQL: " . mysql_error());
mysql_select_db($db_database)
	or die("Невозможно выбрать базу данных: " . mysql_error());
if(isset($_GET['name']) ){

$name= $_GET['name'];
$table= $_GET['table'];

$query='select id from '.$table.' where name="'.$name.'"';

$result=mysql_query($query);
$rows=mysql_num_rows($result);
if ($rows==0) {
$query = 'INSERT INTO '.$table.' VALUES(null,"'. $name. '")';
$result= mysql_query($query) or die(mysql_error());
//<!-- If is set URL variables and insert is ok, show the site name -->
if ($table=='pupils') echo 'Ученик добавлен: '.$name.'.';
if ($table=='teachers') echo 'Учитель добавлен: '.$name.'.';
 

}
else 
{
if ($table=='pupils') echo 'Такой ученик уже есть: '.$name.'.';
if ($table=='teachers') echo 'Такой учитель уже есть: '.$name.'.';
}
}
else { 
echo 'Error! Please fill all fileds!';
}
?>