<!-- 設定網頁編碼為UTF-8 -->
<?php session_start(); ?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
include("mysql_connect.inc.php");
echo '<a href="logout.php">Log Out</a>  <br><br>';
?>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<script language="JavaScript" src="myIJob.js" type="text/javascript">
	</script>
	<link rel="stylesheet" type="text/css" href="ijobstyle.css" />
	<title>
		ijob
	</title>
</head>
<body>
<div id="header">
	<div id="topleft">
		<img src="logo.jpg" width=90% height=90% /></tr>
	</div>
	<div id="topmiddle">
		<p id="sentence"> Where there is a will, there is a way.</p>
	</div>

</div>
	<div id="functiondiv">
		<form>
			<ul>
			<li><a href="createjob.php">New Job</a></li>
			<li><a href="showjob.php">My Job</a></li>
			<li><a href="analytic.php">Statistics</a></li>
			<li><a href="help.php">Help</a></li>
			</ul>
		</form>
	</div>
</body>	
</html>