<?php require_once 'china_login.php'; 
$db_server=mysql_connect($db_hostname,$db_username,$db_password);
if (!$db_server) die("Невозможно подключиться к MySQL: " . mysql_error());
mysql_select_db($db_database)
	or die("Невозможно выбрать базу данных: " . mysql_error());
?>
<head>
<title>Загрузка</title>
</head>
<?php 
	include("china_header.php");
	
$query="select name,count(*) as count from teachers, links where teachers.id=teacher group by name";
$result=mysql_query($query);
$rows=mysql_num_rows($result);

echo <<<_END
<table border="1" cellpadding="5">
  <tr>
    <td>Учитель</td><td>Количество учеников</td>
  </tr>
_END;
for ($j=0; $j<$rows; ++$j){
echo "<tr><td>".mysql_result($result,$j,'name')."</td><td>".mysql_result($result,$j,'count')."</td></tr>";
}

echo "</table>";


?>