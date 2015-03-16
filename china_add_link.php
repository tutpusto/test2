<?php
require_once 'china_login.php'; 
$db_server=mysql_connect($db_hostname,$db_username,$db_password);
if (!$db_server) die("Невозможно подключиться к MySQL: " . mysql_error());
mysql_select_db($db_database)
	or die("Невозможно выбрать базу данных: " . mysql_error());

?>
<script src="china_ajax.js" language="javascript"></script>
<head>
<title>Создать связь</title>
</head>
<body>
<?php
include("china_header.php");
$query="select name from pupils";
$pupils=mysql_query($query);
$rows_pupils=mysql_num_rows($pupils);
$query="select name from teachers";
$teachers=mysql_query($query);
$rows_teachers=mysql_num_rows($teachers);

echo <<<_END

<form action="javascript:link()" method="post">
<select id="pupil" required> 
 <option selected="selected" disabled>Выберите ученика</option> 
_END;
 for ($j=0; $j<$rows_pupils; ++$j){
 echo "<option>".mysql_result($pupils,$j,'name')."</option> ";

 }
echo <<<_END
 </select>
 <select id="teacher" required> 

 <option selected="selected" disabled>Выберите учителя</option> 
_END;
for ($j=0; $j<$rows_teachers; ++$j){
 echo "<option>".mysql_result($teachers,$j,'name')."</option> ";
 }
echo <<<_END
</select>
<input type="submit" name="Submit" value="Insert"/>
</form>
<div id="insert_response" ></div>
_END;
?>
</body>