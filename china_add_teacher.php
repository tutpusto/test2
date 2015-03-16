<?php



?>

<head>
<title>Создать ученика</title>
</head>
<script src="china_ajax.js" language="javascript"></script>

<body>

<?php
include("china_header.php");
echo <<<_END

	<form action="javascript:insert()" method="post"><pre>
	Имя <input type=text" name="name" id="name"/>
	<input type="submit" name="Submit" value="Insert"/>
</pre></form>
<div id="table" style="display: none;" >teachers</div>
<div id="insert_response" ></div>
_END;

?>
</body>