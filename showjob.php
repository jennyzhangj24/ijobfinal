<?php session_start(); ?>
<?php
include("mysql_connect.inc.php");
if($_SESSION['username'] != null)
{
      
    	$lookupid=$_SESSION['username'];
        $sql = "SELECT * FROM MemberJobs_Table where User_Id=$lookupid";
        $result = mysql_query($sql);
        while($row = mysql_fetch_row($result))
        {
                 echo " CompanyName：$row[2], " . 
                 "JobTitle：$row[3], ApplyLink：$row[4], ApplyDate：$row[5],  Location：$row[6],  JobRequirment：$row[7]<br>";
        }
}
else
{
        echo '您無權限觀看此頁面!';
        echo '<meta http-equiv=REFRESH CONTENT=2;url=index.php>';
}
?>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<html>
<head>
	<link rel="stylesheet" type="text/css" href="newjobstyle2.css" />
	<title>
		New job form
	</title>
</head>
<body>
</body>
</html>