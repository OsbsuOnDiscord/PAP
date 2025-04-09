<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
 
    session_start();
    if (isset($_SESSION['email'])) {
      $receiver_email = $_SESSION["email"];
    } 

    $form_data = [
        "tipo_equipamento" => $_POST["tipo-equipamento"] ?? "",
        "marca_modelo" => $_POST["marca-modelo"] ?? "",
        "sistema_operativo" => $_POST["sistema-operativo"] ?? "",
        "versao_so" => $_POST["versao-so"] ?? "",
        "config_hardware" => $_POST["config-hardware"] ?? "",
        "descricao_problema" => $_POST["descricao-problema"] ?? "",
        "inicio_problema" => $_POST["inicio-problema"] ?? "",
        "liga" => $_POST["liga"] ?? "",
        "mensagem_erro" => $_POST["mensagem-erro"] ?? "",
        "sintomas" => isset($_POST["sintomas"]) ? $_POST["sintomas"] : [],
        "instalacao_programas" => $_POST["instalacao-programas"] ?? "",
        "alteracao_hardware" => $_POST["alteracao-hardware"] ?? "",
        "quedas_energia" => $_POST["quedas-energia"] ?? ""
    ];

    if (!empty($form_data["sintomas"]) && is_array($form_data["sintomas"])) {
        $form_data["sintomas"] = implode(", ", $form_data["sintomas"]);
    } else {
        $form_data["sintomas"] = "Nenhum selecionado";
    }


    $json_data = json_encode($form_data);
    $flask_url = "http://localhost:5000/form/" . urlencode($receiver_email);

    $ch = curl_init($flask_url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, ["Content-Type: application/json"]);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $json_data);
    curl_setopt($ch, CURLOPT_TIMEOUT, 10);

    $response = curl_exec($ch);
    $http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
    $curl_error = curl_error($ch);
    curl_close($ch);

    if ($curl_error) {
        echo "<p style='color: red;'>Erro ao conectar ao servidor. Tente novamente mais tarde.</p>";
    } else {
        echo "<p style='color: green;'>Formulário enviado! Um email chegará em aproximadamente 5 minutos.</p>";
    }
}
?>
