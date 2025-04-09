<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="../css/style_login.css">
</head>

<header>
        <a href="../index.php">
        <img src="../img/2.png" alt="" id="logo"></a>
        <div class="header-center">Let's fix it</div>
        <div class="header-right">
        <button class="login-btn">Log In</button>
        </div>
</header>
         
<body>
    <div id="container">
    <h2>Register</h2>
    <form action="registar.php" method="POST">
        <label for="nome">Nome:</label>
        <br>
        <input type="text" id="nome" name="nome" required>
        <br>

        <label for="email">Email:</label>
        <br>
        <input type="email" id="email" name="email" required>
        <br>

        <label for="password">Password:</label>
        <br>
        <input type="password" id="password" name="password" required>
        <br>

        <label for="confirm-password">Confirm Password:</label>
        <br>
        <input type="password" id="confirm-password" name="confirm-password" required>
        <br>

        <button type="submit">Register</button>
    </form>
    </div>
    
    <?php
    if (isset($_GET['error'])) {
        echo "<p style='color:red;'>Passwords não coincidem, tente novamente.</p>";
    }
    ?>
</body>
</html>
