<?php
session_start();  // Start the session

// Check if the user is logged in
if (!isset($_SESSION['email'])) {
    // If the user is not logged in, redirect to the login page
    header("Location: ../sessao/login_form.php?error=2");
    exit(); // Stop further execution
}
?>
<!DOCTYPE html>
<html lang="pt-pt">


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário de Diagnóstico de Problemas de Computador</title>
    <link rel="stylesheet" href="../css/style_questionario.css">
</head>

<body>
    <h1>Formulário de Diagnóstico</h1>
    <form action="ligacaoaidb.php" method="POST">

        <!-- Informações do Equipamento -->
        <h2>1. Informações do Equipamento</h2>
        <label for="tipo-equipamento">Tipo de Equipamento *</label>
        <select id="tipo-equipamento" name="tipo-equipamento" required>
            <option value="" disabled selected>Selecione</option>
            <option value="desktop">Desktop</option>
            <option value="Portátil">Portátil</option>
        </select>

        <label for="marca-modelo">Marca e Modelo *</label>
        <input type="text" id="marca-modelo" name="marca-modelo" placeholder="Ex: Dell Inspiron, HP Pavilion" required>

        <label for="sistema-operativo">Sistema Operativo *</label>
        <select id="sistema-operativo" name="sistema-operativo" required>
            <option value="" disabled selected>Selecione</option>
            <option value="windows">Windows</option>
            <option value="macos">macOS</option>
            <option value="linux">Linux</option>
        </select>

        <label for="versao-so">Versão do SO</label>
        <input type="text" id="versao-so" name="versao-so" placeholder="Ex: Windows 10 Pro, Ubuntu 22.04">

        <label for="config-hardware">Configurações do Hardware</label>
        <textarea id="config-hardware" name="config-hardware"
            placeholder="Ex: CPU: Intel i5, RAM: 8GB, GPU: Nvidia GTX 1050"></textarea>

        <!-- Histórico do Problema -->
        <h2>2. Descrição do Problema</h2>
        <label for="descricao-problema">Descrição do Problema *</label>
        <textarea id="descricao-problema" name="descricao-problema" placeholder="Descreva o problema com detalhes"
            required></textarea>

        <label for="inicio-problema">Quando começou o problema?</label>
        <input type="text" id="inicio-problema" name="inicio-problema"
            placeholder="Ex: Há 2 dias, após uma atualização">

        <!-- Sintomas -->
        <h2>3. Sintomas</h2>
        <label>O computador liga normalmente?</label>
        <select id="liga" name="liga">
            <option value="sim">Sim</option>
            <option value="nao">Não</option>
            <option value="as-vezes">Às vezes</option>
        </select>

        <label for="mensagem-erro">Houve alguma mensagem de erro?</label>
        <textarea id="mensagem-erro" name="mensagem-erro"
            placeholder="Descreva ou anexe prints no campo de upload"></textarea>

        <label><b>Sintomas identificados:</b></label></label>
        <div class="opcao">
            <input type="checkbox" id="lentidao" name="sintomas" value="lentidao">
            <label for="lentidao">Lentidão geral</label>
        </div>
        <div class="opcao">
            <input type="checkbox" id="nao-liga" name="sintomas" value="nao-liga">
            <label for="nao-liga">Não liga</label>
        </div>
        <div class="opcao">
            <input type="checkbox" id="sobreaquecimento" name="sintomas" value="sobreaquecimento">
            <label for="sobreaquecimento">Sobreaquecimento</label>
        </div>
        <div class="opcao">
            <input type="checkbox" id="ecra-azul" name="sintomas" value="ecra-azul">
            <label for="ecra-azul">Ecra azul ou Reinicia sozinho</label>
        </div>
        <div class="opcao">
            <input type="checkbox" id="problemas-audio" name="sintomas" value="problemas-audio">
            <label for="problemas-audio">Problemas de áudio</label>
        </div>
        <div class="opcao">
            <input type="checkbox" id="internet-ma" name="sintomas" value="internet-ma">
            <label for="internet-ma">Má conexão de internet </label>
        </div>
        <div class="opcao">
            <input type="checkbox" id="perifericos" name="sintomas" value="perifericos">
            <label for="perifericos">Periféricos não funcionam</label>
        </div>

        <!-- Alterações Recentes -->
        <h2>4. Alterações Recentes</h2>
        <label>Houve instalação de novos programas ou atualizações?</label>
        <select id="instalacao-programas" name="instalacao-programas">
            <option value="sim">Sim</option>
            <option value="nao">Não</option>
        </select>

        <label>Houve alteração no hardware?</label>
        <select id="alteracao-hardware" name="alteracao-hardware">
            <option value="sim">Sim</option>
            <option value="nao">Não</option>
        </select>

        <label>Houve quedas de energia ou surtos recentes?</label>
        <select id="quedas-energia" name="quedas-energia">
            <option value="sim">Sim</option>
            <option value="nao">Não</option>
        </select>

        <!-- Upload e Submissão -->
        <h2>5. Upload e Submissão</h2>
        <label for="upload-arquivos">Upload de Arquivos (opcional)</label>
        <input type="file" id="upload-arquivos" name="upload-arquivos" accept="image/*,.txt,.log">

        <button type="submit">Enviar Formulário</button>
    </form>
</body>