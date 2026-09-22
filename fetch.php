<?php
require "config.php";
$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
$result = mysqli_query($conn, "SELECT * FROM enquiries WHERE id = $id");
if (!$result) {
    die("Query failed: " . mysqli_error($conn));
}
while ($row = mysqli_fetch_assoc($result)) {
    echo "Email: " . $row["email"] .
         ", <span class='pad5'> Comment: " . $row["comment"] .
         " , <span class='pad5'> DateTime : " . $row["datetime"];
}
?>


