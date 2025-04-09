<!DOCTYPE html>
<html lang="pt-PT">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Disco rígido</title>
  <link rel="shortcut icon" href="../img/favicon/favicon.ico" type="image/x-icon">
  <link rel="stylesheet" href="../css/style.css">
</head>

<body>

    <?php
    include "../header.php"
    ?>

   

  <main class="container mb-2 shadow p-2 rounded">
    <br>
    <p>O disco rígido é um componente essencial do computador, responsável pelo armazenamento de dados. Problemas com o
      disco rígido podem causar perda de dados ou falhas no sistema.</p>
    <hr>

    <div class="error">
      <h2>Erro 1: Falha na Inicialização do Disco</h2>
      <p><strong>Descrição:</strong> O sistema operativo não consegue detetar o disco rígido durante a inicialização.
      </p>
      <p><strong>Motivo:</strong> Cabos de ligação soltos, configurações incorretas na BIOS ou falha mecânica no disco.
      </p>
      <p><strong>Correção rápida:</strong> Verifique se os cabos SATA e de alimentação estão bem conectados. Entre na
        BIOS e certifique-se de que o disco está ativado. Se o problema persistir, teste o disco em outro computador.
      </p>
    </div>
    <br>

    <div class="error">
      <h2>Erro 2: Ruído Anormal</h2>
      <p><strong>Descrição:</strong> O disco rígido emite cliques ou ruídos estranhos durante o funcionamento.</p>
      <p><strong>Motivo:</strong> Este é um sinal claro de falha mecânica, frequentemente relacionada à cabeça de
        leitura/escrita ou aos pratos internos.</p>
      <p><strong>Correção rápida:</strong> Faça backup dos dados imediatamente e substitua o disco rígido assim que
        possível.</p>
    </div>
    <br>

    <div class="error">
      <h2>Erro 3: Disco Cheio</h2>
      <p><strong>Descrição:</strong> O disco rígido atinge a capacidade máxima, tornando o sistema lento ou
        impossibilitando novos arquivos.</p>
      <p><strong>Motivo:</strong> Acúmulo de arquivos desnecessários, falta de espaço para atualizações do sistema ou
        uso inadequado do armazenamento.</p>
      <p><strong>Correção rápida:</strong> Apague arquivos temporários, desinstale programas não utilizados e mova
        arquivos grandes para um disco externo ou nuvem.</p>
    </div>
    <br>

    <div class="error">
      <h2>Erro 4: Corrupção de Arquivos</h2>
      <p><strong>Descrição:</strong> O sistema apresenta mensagens de erro ao tentar aceder a determinados arquivos ou
        pastas.</p>
      <p><strong>Motivo:</strong> Pode ser causado por desligamentos abruptos, vírus ou falhas no disco rígido.</p>
      <p><strong>Correção rápida:</strong> Execute uma verificação de erros no disco usando ferramentas como CHKDSK
        (Windows) ou fsck (Linux). Certifique-se também de que o antivírus está atualizado.</p>
    </div>
    <br>

    <div class="error">
      <h2>Erro 5: Disco Não Reconhecido</h2>
      <p><strong>Descrição:</strong> O sistema operativo não reconhece o disco rígido, mesmo que esteja fisicamente
        conectado.</p>
      <p><strong>Motivo:</strong> Problemas de formatação, partição corrompida ou falha no firmware do disco.</p>
      <p><strong>Correção rápida:</strong> Utilize ferramentas de gestão de disco para verificar as partições. Caso
        necessário, refaça a formatação do disco, mas tenha em mente que isso apagará todos os dados.</p>
    </div>
    <br>

  </main>
</body>

</html>