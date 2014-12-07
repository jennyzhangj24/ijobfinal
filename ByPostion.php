
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
                 //echo "$row[2]";
                 $orders[]=array(
                   'JobId'=>$row[0],
                  'ApplyDate'=>$row[5],
                  'CompanyName'=>$row[2]
                 
          );
        }
        foreach( $orders as $date ) {
    echo "<tr>";
    foreach( $date as $value ) {
     echo "<td>"." ". $value ." "."</td>";
    }
  echo "<br>";
  echo "</tr>";
}
}
?>
<html>
  <head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1.1", {packages:["bar"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          // ['Poistion', 'Offer', 'Reject', 'Pending'],
          // ['2014', 1000, 400, 200],
          // ['2015', 1170, 460, 250],
          // ['2016', 660, 1120, 300],
          // ['2017', 1030, 540, 350]
        ]);

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