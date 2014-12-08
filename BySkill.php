<?php session_start(); ?>
<?php
include("mysql_connect.inc.php");
if($_SESSION['username'] != null)
{
      
    	$lookupid=$_SESSION['username'];
        $sql = "SELECT * FROM MemberJobs_Table where User_Id=$lookupid";
        $sql2 ="SELECT distinct MemberJobs_Table.JobRequirment, offernum,rejectnum ,pendingnum from
MemberJobs_Table  left outer join 
(SELECT JobRequirment,count(*) as offernum FROM `MemberJobs_Table` WHERE User_Id=$lookupid and CurrentStatus='Offer'
group by JobRequirment)  AS offertable on MemberJobs_Table.JobRequirment=offertable.JobRequirment left outer join 
(SELECT JobRequirment,count(*) as rejectnum FROM `MemberJobs_Table` WHERE User_Id=$lookupid and CurrentStatus='Reject'
group by JobRequirment)  AS rejecttable on offertable.JobRequirment=rejecttable.JobRequirment left outer join 
(SELECT JobRequirment,count(*) as pendingnum FROM `MemberJobs_Table` WHERE User_Id=$lookupid and CurrentStatus='Pending'
group by JobRequirment)  AS pendingtable on pendingtable.JobRequirment=rejecttable.JobRequirment
WHERE User_Id=$lookupid";

       $result = mysql_query($sql2);
        while($row = mysql_fetch_row($result))
        {
                 $orders[]=array(
                  'JobRequirment' =>(string)$row[0] ,
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
                title: "Skills & Application Status",
                description: "Display by offernum,rejectnum,pendingnum",
                padding: { left: 5, top: 5, right: 5, bottom: 5 },
                titlePadding: { left: 90, top: 0, right: 0, bottom: 10 },
                source: sampleData,
                categoryAxis:
                    {
                        dataField: 'JobRequirment',
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