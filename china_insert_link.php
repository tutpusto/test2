<?php require_once 'china_login.php'; 
$db_server=mysql_connect($db_hostname,$db_username,$db_password);
if (!$db_server) die("Невозможно подключиться к MySQL: " . mysql_error());
mysql_select_db($db_database)
	or die("Невозможно выбрать базу данных: " . mysql_error());
	
$pupil= $_GET['pupil'];
$teacher= $_GET['teacher'];


$query="select id from pupils where name='".$pupil."'";
$result=mysql_query($query);
$pupil_id=mysql_result($result,0,"id");

$query="select id from teachers where name='".$teacher."'";
$result=mysql_query($query);
$teacher_id=mysql_result($result,0,"id");

$query="select id from links where teacher=".$teacher_id." and pupil=".$pupil_id;
$result=mysql_query($query);
$rows=mysql_num_rows($result);
if ($rows==0) {
$query="insert into links values(null,".$pupil_id.",".$teacher_id.")";
$result=mysql_query($query) or die(mysql_error());
//<!-- If is set URL variables and insert is ok, show the site name -->
echo "Cвязь добавлена.";
}
else {
echo "Такая связь уже есть";
}


?>