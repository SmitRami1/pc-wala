<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../CSS/nav.css">
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
            <a class="nav-link" aria-current="page" href="home.php" id="hover">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#container" id="hover">Category</a>
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
</body>
</html>
