<?php session_start(); ?>
<?php
 include("mysql_connect.inc.php");
$userid = $_SESSION['username'];
$CompanyName = $_POST['CompanyName'];
$JobTitle = $_POST['JobTitle'];
$ApplyLink = $_POST['ApplyLink'];
$ApplyDate = $_POST['ApplyDate'];
$Location = $_POST['Location'];
$JobRequirment = $_POST['JobRequirment'];
$other = $_POST['other'];
$status = $_POST['currentstatus'];

//判斷帳號密碼是否為空值
//確認密碼輸入的正確性
if($userid != null )       
{

        //新增資料進資料庫語法
        $sql = "insert into MemberJobs_Table(User_Id,CompanyName, JobTitle, ApplyLink, ApplyDate, Location,JobRequirment,Others,CurrentStatus,Refer) values ('$userid','$CompanyName', '$JobTitle', '$ApplyLink', '$ApplyDate','$Location', '$JobRequirment', '$other','$status','0')";
        if(mysql_query($sql))
        {
                echo 'Successful!';
                echo '<meta http-equiv=REFRESH CONTENT=2;url=member.php>';
        }
        else
        {
                echo 'Sorry,try again first!';
                echo '<meta http-equiv=REFRESH CONTENT=2;url=createjob.php>';
        }
}
else
{
        echo 'Sorry,try again second!';
        echo '<meta http-equiv=REFRESH CONTENT=2;url=createjob.php>';
}
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
</body> 
</html>


