<?php
session_start();

// Check if the user is logged in
if (isset($_SESSION["username"])) {
    $loggedIn = true;
    $username = $_SESSION["username"];
} else {
    $loggedIn = false;
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | PC-WALA</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="../CSS/main.css">
    <link rel="stylesheet" href="../CSS/home.css">
</head>
<body>
  <nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
      <img src="../Images/logo.png" alt="Can't Load Image" id="logo">
      <a class="navbar-brand" href="#">PC WALA</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#" id="hover">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" id="hover">Category</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" id="hover">Pre-Built</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" id="hover">Contact Us</a>
          </li>
        </ul>
        <form class="d-flex" role="search">
          <div class="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          </div>
          <?php if ($loggedIn) : ?>
          </form>
                      <a class="navbar-text login-stat" href="logout.php">Logout</a>
                  <?php else : ?>
                      <a href="login.php" class="btn btn-outline-success">Login</a>
                  <?php endif; ?>
          <a href="#"><img src="../Images/cart.png" alt="Can't Load Image" id="cart"></a>
      </div>   
    </div>
  </nav>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "pc-wala";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$category = $_GET['category'];
$sql = "SELECT * FROM products WHERE category = '$category'";
$result = $conn->query($sql);
?>
    <div id="products-container">
        <?php
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
              echo ' <div class = "products">
              <div class = "container">
                  <div class = "product-items">
                      <!-- single product -->
                      <div class = "product">
                          <div class = "product-content">
                              <div class = "product-img">
                                  <img src = "'. $row['image'] .'" alt = "product image">
                              </div>
                              <div class = "product-btns">
                                  <button type = "button" class = "btn-cart"> add to cart
                                      <span><i class = "fas fa-plus"></i></span>
                                  </button>
                                  <button type = "button" class = "btn-buy"> buy now
                                      <span><i class = "fas fa-shopping-cart"></i></span>
                                  </button>
                              </div>
                          </div>
  
                          <div class = "product-info">
                              <a href = "#" class = "product-name">'. $row['name'] .'</a>
                              <p class = "product-price">'. $row['price'] .'</p>
                          </div>
                      </div>
  ';
            }
        } else {
            echo '<p>No products found for the specified category.</p>';
        }
        ?>
    </div>

<?php
$conn->close();
?>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>