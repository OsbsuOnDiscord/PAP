<?php
session_start()
?>
<header>
    <a href="/papepepe/index.php">
        <img src="/papepepe/img/fixed.png" alt="" id="logo">
    </a>

    <div class="header-center">Let's fix it</div>

    <div class="header-right">
        <?php

        if (!empty($_SESSION["nome"])) {
            echo '<span>Olá, ' . htmlspecialchars($_SESSION["nome"]) . '.</span>
                  <a href="/papepepe/sessao/logout.php"><br>Log Out</a>';
        } else {
            echo '<a href="/papepepe/sessao/login_form.php">
                    <button class="login-btn">Log In</button>
                  </a>';
        }
        ?>
    </div>
</header>
