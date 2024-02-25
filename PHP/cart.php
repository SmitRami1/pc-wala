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
        session_start(); // Start session to access cookies
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "pc-wala";
        $conn = new mysqli($servername, $username, $password, $dbname);

        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Check if user is logged in
        if(isset($_COOKIE['userid'])) {
            $user_id = $_COOKIE['userid']; // Get user ID from cookie

            // Function to update quantity in cart
            if(isset($_POST['update_quantity'])) {
                $product_id = $_POST['product_id'];
                $new_quantity = $_POST['quantity'];

                // Update quantity in cart
                $update_query = "UPDATE cart SET quantity = $new_quantity WHERE userid = '$user_id' AND productid = $product_id";
                $conn->query($update_query);
            }

            // Function to remove product from cart
            if(isset($_POST['remove_product'])) {
                $product_id = $_POST['product_id'];

                // Remove product from cart
                $remove_query = "DELETE FROM cart WHERE userid = '$user_id' AND productid = $product_id";
                $conn->query($remove_query);
            }

            // Fetch products in the cart
            $query_cart = "SELECT cart.productid, cart.quantity, products.name, products.image, products.price 
                           FROM cart 
                           INNER JOIN products ON cart.productid = products.id 
                           WHERE cart.userid = '$user_id'";
            $result_cart = $conn->query($query_cart);

            // Display product details
            if($result_cart->num_rows > 0) {
                while($row_cart = $result_cart->fetch_assoc()) {
                    $product_id = $row_cart['productid'];
                    $product_name = $row_cart['name'];
                    $image = $row_cart['image'];
                    $price = $row_cart['price'];
                    $quantity = $row_cart['quantity'];
        ?>
                    <div class="product">
                        <div class="product-details">
                            <img src="<?php echo $image; ?>" alt="Product Image">
                            <div class="product-info">
                                <h3><?php echo $product_name; ?></h3>
                                <p>Price: ₹<?php echo $price; ?></p>
                                <p>Quantity: 
                                    <form method="post" class="actions">
                                        <input type="hidden" name="product_id" value="<?php echo $product_id; ?>">
                                        <input type="number" name="quantity" value="<?php echo $quantity; ?>" min="1">
                                        <input type="submit" name="update_quantity" value="Update">
                                    </form>
                                </p>
                            </div>
                        </div>
                        <form method="post" class="actions">
                            <input type="hidden" name="product_id" value="<?php echo $product_id; ?>">
                            <input type="submit" name="remove_product" value="Remove">
                        </form>
                    </div>
        <?php
                }
            } else {
                echo "<p class='empty-cart'>Your cart is empty.</p>";
            }
        } else {
            // Handle case when user is not logged in
            echo "Please log in to view your cart.";
        }
        ?>
    </div>
</body>
</html>
