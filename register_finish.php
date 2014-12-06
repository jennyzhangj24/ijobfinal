<?php session_start(); ?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<html>
<head>
        <link rel="stylesheet" type="text/css" href="newjobstyle.css" />
        <title>
                registration successfully
        </title>
</head>
<body>
<?php
include("mysql_connect.inc.php");

$id = $_POST['id'];
$pw = $_POST['pw'];
$pw2 = $_POST['pw2'];
$gender=$_POST['Gender'];
$telephone = $_POST['telephone'];
$address = $_POST['address'];
$email = $_POST['email'];
$other = $_POST['other'];

//判斷帳號密碼是否為空值
//確認密碼輸入的正確性
if($id != null && $pw != null && $pw2 != null && $pw == $pw2)
{
        //新增資料進資料庫語法
        $sql = "insert into member_table (username, password, Gender,telephone, address, Email, other) values ('$id', '$pw', '$gender','$telephone', '$address','$email', '$other')";
        if(mysql_query($sql))
        {
                echo 'Successful!';
                //echo '<meta http-equiv=REFRESH CONTENT=2;url=index.php>';
        }
        else
        {
                echo 'Sorry,try again first!';
                //echo '<meta http-equiv=REFRESH CONTENT=2;url=index.php>';
        }
}
else
{
        echo 'Sorry,try again second!';
       // echo '<meta http-equiv=REFRESH CONTENT=2;url=index.php>';
}
?>
</body>
</html>

