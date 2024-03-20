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
$totalprice = 0; // Initialize total price
if (isset($_POST['checkout_cart'])) {
    $user_id=$_COOKIE['userid'];
    $query_cart = "SELECT cart.productid, cart.quantity, products.name, products.image, products.price 
    FROM cart 
    INNER JOIN products ON cart.productid = products.id 
    WHERE cart.userid = '$user_id'";
$result_cart = $conn->query($query_cart);

if($result_cart->num_rows > 0) {
while($row_cart = $result_cart->fetch_assoc()) {
$product_id = $row_cart['productid'];
$product_name = $row_cart['name'];
$image = $row_cart['image'];
$pricestring = $row_cart['price']; // Get price as string
$priceasnumber = (float) str_replace(',', '', $pricestring); // Convert to number
$quantity = $row_cart['quantity'];
$subtotal = $priceasnumber * $quantity; // Get subtotal
$totalprice += $subtotal; // Add subtotal to total price
}
?>
<div class="product">
    <div class="product-details">
    <img src="<?php echo $image; ?>" alt="Product Image">
    <div class="product-info">
        <h3><?php echo $product_name; ?></h3>
        <p>Price: ₹<?php echo $pricestring; ?></p> <!-- Display price with commas -->
        <p>Quantity: 
            <form method="post" class="actions">
                <input type="hidden" name="product_id" value="<?php echo $product_id; ?>">
                <input type="number" name="quantity" value="<?php echo $quantity; ?>" min="1">
                <input type="submit" name="update_quantity" value="Update">
            </form>
        </p>
    </div>
</div>
</div>
<?php
}
}else{
    $product_only="SELECT * FROM products WHERE id = ".$_GET["product_id"]."";
    $res_product = $conn->query($product_only);
    $option2 = $res_product->fetch_assoc();
    $pricestring = $option2['price']; // Get price as string
    $priceasnumber = (float) str_replace(',', '', $pricestring); // Convert to number
    $subtotal = $priceasnumber; // Get subtotal
    $totalprice += $subtotal; // Add subtotal to total price
    ?>
    <div class="product">
    <div class="product-details">
    <img src="<?php echo $option2["image"]; ?>" alt="Product Image">
    <div class="product-info">
        <h3><?php echo $option2["name"]; ?></h3>
        <p>Price: ₹<?php echo $pricestring; ?></p> <!-- Display price with commas -->
    </div>
</div>
</div>
<?php
}
?>