<?php require_once 'china_login.php'; 
$db_server=mysql_connect($db_hostname,$db_username,$db_password);
if (!$db_server) die("Невозможно подключиться к MySQL: " . mysql_error());
mysql_select_db($db_database)
	or die("Невозможно выбрать базу данных: " . mysql_error());
?>
<head>
<title>Выборка</title>
</head>
<?php 
	include("china_header.php");
	
$query="select name from teachers where (teachers.id in (select teacher from links,  pupils where pupil=pupils.id and name in ('Георгий', 'Харитон','Денис','Андрей'))) and (teachers.id not in (select teacher from links, pupils where pupil=pupils.id and name not in ('Георгий','Харитон','Денис','Андрей')))";
$result=mysql_query($query);
$rows=mysql_num_rows($result);

echo <<<_END
<table border="1" cellpadding="5">
  <tr>
    <td><b>Учитель</b></td>
  </tr>
_END;
for ($j=0; $j<$rows; ++$j){
echo "<tr><td>".mysql_result($result,$j,'name')."</td></tr>";
}

echo "</table>";


?>