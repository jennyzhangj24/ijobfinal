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
                 $orders[]=array(
                 	'ApplyDate' =>$row[5] ,
                 	'CompanyName' =>$row[2],
                 	'Job_Id' =>$row[0]
					);
        }
        $jsonTable=json_encode($orders);
}
?>

<html>
  <head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1.1", {packages:["bar"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable(
        json_encode(<?=$jsonTable?>)
        );

        var options = {
          chart: {
            title: 'Company Performance',
            subtitle: 'Sales, Expenses, and Profit: 2014-2017',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="columnchart_material" style="width: 900px; height: 500px;"></div>
  </body>
</html>