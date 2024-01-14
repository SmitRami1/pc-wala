<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | PC-WALA</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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
          <a href="#"><img src="../Images/cart.png" alt="Can't Load Image" id="cart"></a>
        </form>
      </div>   
    </div>
  </nav>
  <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../Images/best seller ad.gif" class="d-block" alt="failed to load image">
    </div>
    <div class="carousel-item">
      <img src="../Images/prebuilt ad.gif" class="d-block" alt="failed to load image">
    </div>
    <div class="carousel-item">
      <img src="../Images/graphics card ad.gif" class="d-block" alt="failed to load image">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div class="container">
  <div class="row row-cols-auto">

    <?php
    // Replace these credentials with your actual database credentials
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "pc-wala";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Fetch data from the database
    $sql = "SELECT image FROM categories";
    $result = $conn->query($sql);

    // Loop through the fetched data
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo '<div class="col">';
            echo '<a href="products.php?category=processor"><img src="' . $row["image"] . '" alt="Can\'t Load Image" id="grid1img">';
            echo '</div>';
        }
    } else {
        echo "0 results";
    }

    // Close the database connection
    $conn->close();
    ?>

  </div>
</div>
<footer class="footer">
</footer>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>