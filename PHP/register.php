<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register | PC-WALA</title>
    <link rel="stylesheet" href="../CSS/register.css">
</head>
<body>
    <div class="container">
        <div class="main-box">
            <div class="logo-part">
                <img src="../Images/logo.png" alt="Can't Load Image">
            </div>
            <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" class="form" method="POST">
            <h1>Register</h1>
            <input type="text" placeholder="Username" name="usrname">
            <input type="password" placeholder="Password" name="pass">
            <input type="password" placeholder="Confirm Password" name="cpass">
            <input type="submit" id="sbt" name="sbt" value="Login">
            <?php
            error_reporting(0);
     $servername = "localhost";
     $username = "root";
     $password = "";
     $dbname = "pc-wala";
     $conn = new mysqli($servername, $username, $password, $dbname);
     if ($conn->connect_error) {
         die("Connection failed: " . $conn->connect_error);
     }
     $sql = "SELECT * FROM users";
     $login = "INSERT INTO users (username,password) VALUES('" . $_POST["usrname"] . "','" . $_POST["pass"] . "')";
     $results = $conn->query($sql);
    if (isset($_POST['sbt'])) {
        if ($_POST['pass']==$_POST['pass']) {
        try {
            mysqli_query($conn, $login);
            echo "<h1>Record inserted successfully.</h1>";
            sleep(2);
            header("Location: ../PHP/login.php");
        } catch (mysqli_sql_exception $e) {
            if ($e->getCode() == 1062) {
                echo "Error: Username is already taken.";
            } else {
                echo "Error inserting record: " . $e->getMessage();
            }
        }
    }else {
        echo "Password Must Be Same";
    }
    }
    ?>
        </form> 
        </div>
    </div>
</body>
</html>