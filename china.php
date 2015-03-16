

<?php
require_once 'china_login.php';
$db_server=mysql_connect($db_hostname,$db_username,$db_password);
if (!$db_server) die("Невозможно подключиться к MySQL: " . mysql_error());
mysql_select_db($db_database)
	or die("Невозможно выбрать базу данных: " . mysql_error());

?>
<head>

<title>Китайская система</title>



</head>
<body>

<?php
include("china_header.php");
?>
</body>