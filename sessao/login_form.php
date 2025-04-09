<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link rel="stylesheet" href="../css/style_login.css">
</head>

<body>

<header>
        <a href="../index.php">
        <img src="../img/2.png" alt="" id="logo"></a>
        <div class="header-center">Let's fix it</div>
        <div class="header-right">
        <button class="login-btn">Log In</button>
        </div>
</header>

    <div id="container">

    <?php
    if (isset($_GET['error']) && $_GET['error'] == '1') {
        echo "<p style='color:red;'>Credenciais Invalidas, tente novamente.</p>";
    }
    if (isset($_GET['error']) && $_GET['error'] == '2') {
        echo "<p style='color:red;'>É preciso estar logado para fazer o formulario.</p>";
    }
        ?>

    <form action="login.php" method="POST">
        <h2>Login</h2>
        <label for="email">Email:</label>
        <br>
        <input type="email" id="email" name="email" required>
        <br>

        <label for="password">Password:</label>
        <br>
        <input type="password" id="password" name="password" required>
        <br>

        <button type="submit">Login</button>
    </form>
    <a href="registar_form.php">Não tem conta? Registe-se aqui!</a>
    </div>
</body>
</html>
