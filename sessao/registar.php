<?php
session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "fixdb";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm-password'];

    if ($password !== $confirm_password) {
    
        header("Location: registar_form.php?error=true");
        exit();
    }


    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    $sql = "SELECT * FROM utilizador WHERE email = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
    
        echo "<p style='color:red;'>Este email já está registrado.</p>";
    } else {
     
        $sql = "INSERT INTO utilizador (email, password, nome) VALUES (?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sss", $email, $hashed_password, $nome);
        
        if ($stmt->execute()) {
            
            echo "<p style='color:green;'>Registro feito com sucesso! Agora <a href='login_form.php'>log in</a>.</p>";
        } else {
        
            echo "<p style='color:red;'>Aconteceu um erro no registro, porfavor tente novamente.</p>";
        }
    }

    $stmt->close();
}

$conn->close();
?>
