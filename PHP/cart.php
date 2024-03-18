<?php
include("nav.php");
error_reporting(0);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart | PC WALA</title>
    <link rel="stylesheet" href="../CSS/cart.css">
</head>
<body>
    <div class="container">
    <?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "pc-wala";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
if(isset($_COOKIE['user_id'])) {
    $user_id = $_COOKIE['user_id'];
    include("cart_items.php");
} else {
    echo "Please log in to view your cart.";
}
?>    </div>
</body>
</html>
