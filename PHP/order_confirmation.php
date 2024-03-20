<?php
// Include necessary files, such as the navigation and database connection
include("nav.php");
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "pc-wala";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$order_id = $_GET['order_id'];

// Fetch the order details from the database
$order_query = "SELECT * FROM orders WHERE id = ?";
$order_stmt = $conn->prepare($order_query);
$order_stmt->bind_param("i", $order_id);
$order_stmt->execute();
$order_result = $order_stmt->get_result();
$order_row = $order_result->fetch_assoc();

// Fetch the order items from the database
$order_items_query = "SELECT order_items.id, order_items.product_id, order_items.quantity, order_items.price, products.name FROM order_items INNER JOIN products ON order_items.product_id = products.id WHERE order_id = ?";
$order_items_stmt = $conn->prepare($order_items_query);
$order_items_stmt->bind_param("i", $order_id);
$order_items_stmt->execute();
$order_items_result = $order_items_stmt->get_result();

// Display the order confirmation page
echo "<h1>Order Confirmation</h1>";
echo "<p>Order ID: " . $order_row['id'] . "</p>";
echo "<p>User ID: " . $order_row['user_id'] . "</p>";
echo "<p>Total Price: " . $order_row['total_price'] . "</p>";
echo "<h2>Order Items</h2>";
echo "<table>";
echo "<tr><th>Product Name</th><th>Quantity</th><th>Price</th></tr>";
while ($order_items_row = $order_items_result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $order_items_row['name'] . "</td>";
    echo "<td>" . $order_items_row['quantity'] . "</td>";
    echo "<td>" . $order_items_row['price'] . "</td>";
    echo "</tr>";
}
echo "</table>";
?>