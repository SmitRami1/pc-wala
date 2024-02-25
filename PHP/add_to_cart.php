<?php
session_start();

// Check if the user is logged in
if (!isset($_SESSION["username"])) {
    header("Location: login.php");
    exit();
}

// Retrieve the product id from the URL
$id = isset($_GET['id']) ? $_GET['id'] : '';

// Add the product to the cart
if ($id) {
    if (!isset($_SESSION["cart"])) {
        $_SESSION["cart"] = array();
    }
    array_push($_SESSION["cart"], $id);
}

// Redirect the user back to the product page
header("Location: product.php?id=" . $id);