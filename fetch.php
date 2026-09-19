<?Php
require "config.php"; 
$id=$_GET['id'];
$result=mysql_query("select * from enquiries where id=$id");
while ($row=mysql_fetch_array($result)) {
	echo "Email: ".$row["email"].", <span class='pad5'> Comment: ".$row["comment"]." , <span class='pad5'> DateTime : ",$row["datetime"];
}
?>