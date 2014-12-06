<?php session_start(); ?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<html>
<head>
	<link rel="stylesheet" type="text/css" href="newjobstyle.css" />
	<title>
		New job form
	</title>
</head>
<body>

<?php
//將session清空
unset($_SESSION['username']);
echo 'loging out......';
echo '<meta http-equiv=REFRESH CONTENT=1;url=index.php>';
?>

</body>
</html>