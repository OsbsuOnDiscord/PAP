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
    $email = $_POST['email'];
    $password = $_POST['password'];
    $sql = "SELECT * FROM utilizador WHERE email = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();
    $user = $result->fetch_assoc();
    if ($user && password_verify($password, $user['password'])) {
      
        $_SESSION['email'] = $email;
        $_SESSION['nome'] = $user['Nome'];
        header("Location: ../index.php");  
        exit();
    } else {
        header("Location: login_form.php?error=1"); 
        exit();
    }
    $stmt->close();
}
$conn->close();
?>
