//some modifcation
<?php session_start(); ?>
<?php
include("mysql_connect.inc.php");
if($_SESSION['username'] != null)
{
      
      $lookupid=$_SESSION['username'];
        $sql = "SELECT * FROM MemberJobs_Table where User_Id=$lookupid";
        $sql2 ="SELECT distinct MemberJobs_Table.Location, offernum,rejectnum ,pendingnum from
MemberJobs_Table  left outer join 
(SELECT Location,count(*) as offernum FROM `MemberJobs_Table` WHERE User_Id=$lookupid and CurrentStatus='Offer'
group by Location)  AS offertable on MemberJobs_Table.Location=offertable.Location left outer join 
(SELECT Location,count(*) as rejectnum FROM `MemberJobs_Table` WHERE User_Id=$lookupid and CurrentStatus='Reject'
group by Location)  AS rejecttable on offertable.Location=rejecttable.Location left outer join 
(SELECT Location,count(*) as pendingnum FROM `MemberJobs_Table` WHERE User_Id=$lookupid and CurrentStatus='Pending'
group by Location)  AS pendingtable on pendingtable.Location=rejecttable.Location
WHERE User_Id=$lookupid";

       $result = mysql_query($sql2);
        while($row = mysql_fetch_row($result))
        {
                 $orders[]=array(
                  'Location' =>(string)$row[0] ,
                  'offernum' =>(int)$row[1],
                  'rejectnum' =>(int)$row[2],
                  'pendingnum' =>(int)$row[2],
          );
        }
       //echo json_encode($orders);
       
}
?>

<html lang="en">
<head>
    <title id='Description'>jQuery Chart Column Series Example</title>
    <link rel="stylesheet" href="jqwidgets/styles/jqx.base.css" type="text/css" />
    <script type="text/javascript" src="scripts/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxchart.core.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxdraw.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxdata.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
    
            // prepare chart data
            var  sampleData = <?php echo json_encode($orders) ?>;
        
            // prepare jqxChart settings
            var settings = {
                title: "Location & Application Status",
                description: "Display by offernum,rejectnum,pendingnum",
                padding: { left: 5, top: 5, right: 5, bottom: 5 },
                titlePadding: { left: 90, top: 0, right: 0, bottom: 10 },
                source: sampleData,
                categoryAxis:
                    {
                        dataField: 'Location',
                        showGridLines: false
                    },
                colorScheme: 'scheme01',
                seriesGroups:
                    [
                        {
                            type: 'column',
                            columnsGapPercent: 30,
                            seriesGapPercent: 0,
                            valueAxis:
                            {
                                minValue: 0,
                                maxValue: 5,
                                unitInterval: 1,
                                description: 'CurrentStatus'
                            },
                            series: [
                                    { dataField: 'offernum', displayText: 'Offernum'},
                                    { dataField: 'rejectnum', displayText: 'Rejectnum'},
                                    { dataField: 'pendingnum', displayText: 'Pendingnum'}
                                ]
                        }
                    ]
            };
            
            // select the chartContainer DIV element and render the chart.
            $('#chartContainer').jqxChart(settings);
        });
    </script>
</head>
<body style="background:white;">
  <div id='chartContainer' style="width:600px; height: 400px"/>
</body>
</html>
