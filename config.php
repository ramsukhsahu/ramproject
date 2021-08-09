<?php
///////// Database Details  ////
$host = "localhost";
$database = "admission";
$username = "root"; 
$password = "";

$con=mysql_connect($host,$username,$password);
if(!$con) {
    die("Database Connection error" . mysql_error());
}
$db=mysql_select_db($database,$con);
if(!$db) {
    die("Database Selection error" . mysql_error());
}
?>