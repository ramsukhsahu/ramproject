<?Php
require "config.php"; 
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
.heading{background-color: #d9edf7;padding:5px 0px;text-align:center;font-weight:bold;font-size:20px;}
.width5{width:5%}
.width10{width:10%}
.width60{60%}
.b_dtl{cursor:pointer;text-decoration:underline}
.pad5{padding-left:3%}
</style>
<body>

<div class="container">
<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12 table table-striped heading'>MBA Course Enquiry Details</div>
<table class='table table-striped'> 
<tr class='info'><td class='col-lg-2 col-md-2 col-sm-2 col-xs-2'>S.No.</td><td class='col-lg-2 col-md-2 col-sm-2 col-xs-2'>Name</td><td ></td><td class='col-lg-12 col-md-12 col-sm-12 col-xs-8'> Details </td></tr>
<?Php
$qry="select * from enquiries order by id";
echo "<table class='table table-striped'>";
$result=mysql_query($qry);
while ($row=mysql_fetch_array($result)) {
echo "<tr><td class='col-lg-2 col-md-2 col-sm-2 col-xs-2'>$row[id] </td><td class='col-lg-2 col-md-2 col-sm-2 col-xs-2'> <a value=$row[id] class='b_dtl'>$row[first_name] $row[last_name]</a></td><td class='col-lg-12 col-md-12 col-sm-12 col-xs-8'><div id='$row[id]' class='my_dtl'> </div> </td> </tr>";
}
echo "</table>";
?>
</div>
<script>
$(document).ready(function() {
	$(".b_dtl").click(function(){
		var id=$(this).attr("value");
		$(".my_dtl").hide();
		$("#"+id+"").html("wait ... ");
		$("#"+id+"").show();
		$("#"+id+"").load('fetch.php?id='+id);
	})
})
</script>
</body>
</html>