<!DOCTYPE html>

<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
      <title>FixIt</title>

    <link rel="shortcut icon" href="../papepepe/img/favicon/favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="../papepepe/css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</head>

<body>
    <?php
    include "header.php"
    ?>
    
    <main class="container mb-2 shadow p-2 rounded">
        <h1>O que o trás aqui hoje?</h1>
        <a href="questionario/form.php" class="btn custom-btn mt-auto" target="_blank">Começar questionário</button></a>
        <br>
        <br>

        <p>Encontre a solução do seu problema através deste questionário</p>
        <hr>
        <h4>Curioso para descobrir os erros mais comuns entre computadores?</h4>
        <h7>Escolha o componente e veja com os seus próprios olhos</h3>         
    <br>
    <br>
    <br>
    <br>

      <div class="row">
        <!-- Cartao 1 -->
        <div class="col-12 col-md-6 col-lg-4 mb-4">
          <div class="card d-flex flex-column h-100 mx-auto" style="width: 18rem;">
            <img src="../papepepe/img/componentes/hdd.png" class="card-img-top" alt=" ">
            <div class="card-body d-flex flex-column">
              <h5 class="card-title">Disco rígido</h5>
              <p class="card-text flex-grow-1">O disco rígido é o que nos permite armazenar itens no nosso PC. Clique aqui para ver os seus erros mais communs.</p>
              <a href="../papepepe/paginas/hdd.php" class="btn custom-btn mt-auto" target="_blank">Verificar erros</a>
            </div>
          </div>
        </div>
      
        <!-- Cartao 2 -->
        <div class="col-12 col-md-6 col-lg-4 mb-4">
          <div class="card d-flex flex-column h-100 mx-auto" style="width: 18rem;">
            <img src="../papepepe/img/componentes/gpu.png" class="card-img-top" alt=" ">
            <div class="card-body d-flex flex-column">
              <h5 class="card-title">Placa de Vídeo</h5>
              <p class="card-text flex-grow-1">A GPU processa gráficos para jogos e aplicações 3D. Clique aqui para ver os seus erros mais communs.</p>
              <a href="../papepepe/paginas/gpu.php" class="btn custom-btn mt-auto"  target="_blank">Verificar erros</a>
            </div>
          </div>
        </div>
      
        <!-- Cartao 3-->
        <div class="col-12 col-md-6 col-lg-4 mb-4">
          <div class="card d-flex flex-column h-100 mx-auto" style="width: 18rem;">
            <img src="../papepepe/img/componentes/ram.png" class="card-img-top" alt=" ">
            <div class="card-body d-flex flex-column">
              <h5 class="card-title">Memória RAM</h5>
              <p class="card-text flex-grow-1">A memória RAM aumenta a velocidade de execução do sistema. Clique aqui para ver os seus erros mais communs.</p>
              <a href="../papepepe/paginas/ram.php" class="btn custom-btn mt-auto" target="_blank">Verificar erros</a>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <!-- Cartao 4 -->
        <div class="col-12 col-md-6 col-lg-4 mb-4">
          <div class="card d-flex flex-column h-100 mx-auto" style="width: 18rem;">
            <img src="../papepepe/img/componentes/motherboard.png" class="card-img-top" alt=" " style="width: 200px;" style="align-items: center;">
            <div class="card-body d-flex flex-column">
              <h5 class="card-title"></h5>Placa mãe</h5>
            <p class="card-text flex-grow-1">A motherboard é o componente que cria acesso entre os componentes. Clique aqui para ver os seus erros mais communs.</p>
              <a href="../papepepe/paginas/motherboard.php" class="btn custom-btn mt-auto" target="_blank">Verificar erros</a>
            </div>
          </div>
        </div>
      
        <!-- Cartao 5 -->
        <div class="col-12 col-md-6 col-lg-4 mb-4">
          <div class="card d-flex flex-column h-100 mx-auto" style="width: 18rem;">
            <img src="../papepepe/img/componentes/cpu.jpg" class="card-img-top" alt=" ">
            <div class="card-body d-flex flex-column">
              <h5 class="card-title">Processador</h5>
              <p class="card-text flex-grow-1">O processador é o cérebro do computado, ele é quem realiza os vários cálculos dentro do PC. CLique aqui para ver os seus erros mais communs.</p>
              <a href="../papepepe/paginas/cpu.php" class="btn custom-btn mt-auto" target="_blank">Verificar erros</a>
            </div>
          </div>
        </div>
      
        <!-- Cartao 6 -->
        <div class="col-12 col-md-6 col-lg-4 mb-4">
          <div class="card d-flex flex-column h-100 mx-auto" style="width: 18rem;">
            <img src="../papepepe/img/componentes/psu.png" class="card-img-top" alt=" ">
            <div class="card-body d-flex flex-column">
              <h5 class="card-title">Fonte de alimentação</h5>
              <p class="card-text flex-grow-1">A PSU fornece energia para todos os componentes do PC. Clique aqui para ver os seus erros mais communs.</p>
              <a href="../papepepe/paginas/psu.php" class="btn custom-btn mt-auto" target="_blank">Verificar erros</a>
            </div>
          </div>
        </div>
      </div>
            

    </main>
  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
