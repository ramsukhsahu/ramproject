<?php
///////// Database Details  ////
$conn = mysqli_connect("localhost", "root", "", "admission");

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>
