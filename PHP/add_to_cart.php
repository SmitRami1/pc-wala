<?php
session_start(); // Start session to access cookies
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "pc-wala";
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// Check if user is logged in (You might need to implement your own login mechanism)
if(isset($_SESSION['userid'])) {
    $userid = $_SESSION['userid']; // Get user ID from session
    $productid = $_GET['id']; // Get product ID from form submission

    // You may want to validate the product ID before proceeding

    // Insert into cart table
    // Assuming you have established a database connection earlier
    $quantity = 1; // Default quantity
    $query = "INSERT INTO cart (userid, productid, quantity) VALUES ('$userid', '$productid', '$quantity')";
    // Execute query
    $result = mysqli_query($conn, $query);
    // Check for errors and handle them accordingly

    // Redirect back to the product page or wherever you want
    header("Location: cart.php");
    exit();
} else {
    // Handle case when user is not logged in
    header("Location: login.php");
    exit();
}
?>
