-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Abr-2025 às 10:52
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fixdb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `problemas`
--

CREATE TABLE `problemas` (
  `tipoequipamento` enum('Desktop','Portátil') NOT NULL,
  `marcamodelo` varchar(50) NOT NULL,
  `sistemaoperativo` enum('Windows','macOS','Linux') NOT NULL,
  `soversao` varchar(50) NOT NULL,
  `hardware` text NOT NULL,
  `descricao` text NOT NULL,
  `inicioproblema` varchar(128) NOT NULL,
  `liganormal` enum('Sim','Não','Às vezes') NOT NULL,
  `mensagemerro` varchar(256) NOT NULL,
  `lentidao` tinyint(1) NOT NULL,
  `naoliga` tinyint(1) NOT NULL,
  `sobreaquecimento` tinyint(1) NOT NULL,
  `bluescreen` tinyint(1) NOT NULL,
  `audio` tinyint(1) NOT NULL,
  `mainternet` tinyint(1) NOT NULL,
  `perifericos` tinyint(1) NOT NULL,
  `updates` tinyint(1) NOT NULL,
  `hardwarenovo` tinyint(1) NOT NULL,
  `energiadown` tinyint(1) NOT NULL,
  `userid` int(11) NOT NULL,
  `problemaid` int(11) NOT NULL,
  `resultado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `problemas`
--

INSERT INTO `problemas` (`tipoequipamento`, `marcamodelo`, `sistemaoperativo`, `soversao`, `hardware`, `descricao`, `inicioproblema`, `liganormal`, `mensagemerro`, `lentidao`, `naoliga`, `sobreaquecimento`, `bluescreen`, `audio`, `mainternet`, `perifericos`, `updates`, `hardwarenovo`, `energiadown`, `userid`, `problemaid`, `resultado`) VALUES
('Desktop', 'Custom built', 'Windows', 'Windows 10 home', 'i3 9th gen, radeon rx550, 16gb ram ', 'a gpu crasha', '3 meses, após atualização de drivers', 'Sim', 'Sim, a dizer q a gpu crashou.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'Por favor, veja se a seguinte informaÃ§Ã£o lhe Ã© Ãºtil. Se precisar de ajuda adicional ou se quiser explicar melhor o problema que vocÃª estÃ¡ enfrentando, por favor, faÃ§a uma nova pergunta!\n\nSe seu GPU estÃ¡ crashando, hÃ¡ vÃ¡rias possÃ­veis soluÃ§Ãµes para tentar resolver o problema:\n\n1. **Atualizar o driver do GPU**: Verifique se o driver do seu GPU estÃ¡ atualizado. Se nÃ£o estiver, atualize-o.\n2. **Reinstalar o driver do GPU**: Desinstale e reinstale o driver do seu GPU. Isso pode resolver problemas com conflitos de drivers ou corrupÃ§Ãµes no arquivo de configuraÃ§Ã£o do driver.\n3. **Configurar o limite de memÃ³ria do GPU**: Verifique se vocÃª estÃ¡ configurando corretamente o limite de memÃ³ria do GPU para aplicativos que utilizam o GPU intensivamente. Limitar a quantidade de memÃ³ria utilizada pelo GPU pode evitar problemas com sobrecarga da memÃ³ria do GPU.\n4. **Limpar a memÃ³ria do GPU**: VocÃª pode tentar limpar a memÃ³ria do GPU para verificar se o problema estÃ¡ sendo causado pela sobrecarga na memÃ³ria do GPU. Isso pode ser feito usando funÃ§Ãµes especÃ­ficas em alguns ambientes de programaÃ§Ã£o, como `glFinish` no OpenGL ou `cudaDeviceReset` no CUDA.\n5. **Usar uma versÃ£o mais antiga do driver**: Se o problema estÃ¡ sendo causado por incompatibilidades com a versÃ£o atual do driver, tente usar uma versÃ£o mais antiga do driver.\n6. **Contacte o fornecedor do GPU**: Se nenhum dos mÃ©todos acima resolver o problema, contacte o fornecedor do GPU e explique o problema que vocÃª estÃ¡ enfrentando. Eles podem te ajudar a resolver problemas especÃ­ficos com o seu hardware ou fornecer atualizaÃ§Ãµes de driver para corrigir problemas conhecidos.'),
('Desktop', 'Custom built', 'Windows', 'Windows 10 home', 'i3 9th gen, radeon rx550, 16gb ram ', 'a gpu crasha', '3 meses, após atualização de drivers', 'Sim', 'Sim, a dizer q a gpu crashou.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 'Por favor, tente seguir estes passos para resolver o seu problema de GPU se estiver usando um computador com o sistema operacional portuguÃªs:\n\n1. Atualize o driver do seu GPU: Baixe e instale os drivers mais recentes do fabricante da sua GPU (NVIDIA, AMD ou Intel) e certifique-se de que os mesmos estÃ£o a funcionar corretamente.\n2. Limpe a cache dos drivers: Limpe a memÃ³ria cache dos seus drivers de GPU usando o programa `DDU` (Display Driver Uninstaller), disponÃ­vel em [https://www.guru3d.com/files-details/display-driver-uninstaller-download.html](https://www.guru3d.com/files-details/display-driver-uninstaller-download.html).\n3. Reinicie o computador e desative a energia da GPU: Desconecte a fonte de alimentaÃ§Ã£o do seu GPU e desative a energia do mesmo para garantir que ele nÃ£o seja utilizado enquanto vocÃª reinicia o computador.\n4. Reinicie o computador em modo seguro: Inicie o computador no modo seguro (reiniciando com as teclas `F2`, `F8` ou `F12` dependendo do seu computador) e verifique se hÃ¡ algum problema com o sistema de arranque.\n5. Reinicie o computador em modo com diagnÃ³stico: Inicie o computador no modo com diagnÃ³stico (reiniciando com a tecla `F10` ou `F12` dependendo do seu computador) e verifique se hÃ¡ algum problema com os componentes de hardware.\n6. Verifique as configuraÃ§Ãµes do GPU: Abra o centro de controle do dispositivo do Windows e verifique se a configuraÃ§Ã£o da sua GPU estÃ¡ correta. Verifique tambÃ©m se hÃ¡ drivers instalados corretamente e se hÃ¡ algum problema com as configuraÃ§Ãµes de performance.\n7. Desabilite as aceleraÃ§Ãµes em software: Desabilite as aceleraÃ§Ãµes em software (tais como a aceleraÃ§Ã£o OpenCL ou CUDA) para verificar se o seu problema estÃ¡ relacionado Ã  mesma.\n8. Reinicie o computador e verifique se o problema persiste. Se o problema persistir, procure ajuda tÃ©cnica especializada.'),
('Desktop', 'Custom built', 'Windows', 'Windows 10 home', 'i3 9th gen, radeon rx550, 16gb ram ', 'a gpu crasha', '3 meses, após atualização de drivers', 'Sim', 'Sim, a dizer q a gpu crashou.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 'Desculpe, mas esse Ã© um problema especÃ­fico do seu sistema e requer mais detalhes para que possa ser resolvido. Em portuguÃªs de Portugal, o seu computador estÃ¡ apresentando o seguinte problema: a GPU estÃ¡ \"crashando\". Abaixo seguem alguns passos que vocÃª pode tentar para resolver esse problema:\n\n1. **Atualize suas driver da GPU**: Certifique-se de que as suas versÃµes mais recentes dos drivers da sua GPU estejam instaladas. VocÃª pode fazer isso a partir do site oficial da fabricante da sua GPU ou utilizando o Driver Update Utilities.\n\n2. **Reduzir o uso da GPU**: Tente reduzir o nÃºmero de aplicaÃ§Ãµes que estÃ£o usando a GPU ao mesmo tempo, pois isso pode estar causando overload.\n\n3. **Limpar a GPU**: Em alguns casos, a limpeza dos cache e registries pode resolver o problema. VocÃª pode utilizar o DDU (Display Driver Uninstaller) para limpar os drivers da sua GPU.\n\n4. **Reiniciar o computador**: Se nenhum dos passos anteriores resolveu o problema, tente reiniciar o seu computador e verificar se a GPU segue \"crashando\".\n\n5. **Teste com outro sistema**: Se todas as tentativas falharem, tente testar a GPU em outro computador para saber se Ã© um problema do computador ou da GPU.\n\nSe vocÃª precisar de ajuda adicional, sinta-se Ã  vontade para pedir! ðŸ˜Š'),
('Desktop', 'Custom built', 'Windows', 'Windows 10 home', 'i3 9th gen, radeon rx550, 16gb ram ', 'a gpu crasha', '3 meses, após atualização de drivers', 'Sim', 'Sim, a dizer q a gpu crashou.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 'Desculpe pela minha falha anterior. Seu computador apresentou um problema onde a GPU se crashava. Aqui estÃ£o alguns passos que vocÃª pode fazer para tentar resolver o problema:\n\n1. Verifique se a GPU estÃ¡ correta e bem conectada ao computador. VocÃª pode fazer isso verificando se ela Ã© reconhecida pelo sistema operacional, tal como por meio do `Device Manager` no Windows ou `System Report` no macOS.\n2. Atualize a GPU ao mais recente driver disponÃ­vel. VocÃª pode encontrar o driver atualizÃ¡vel na pÃ¡gina da fabricante da GPU (por exemplo, NVIDIA ou AMD).\n3. Desinstale e reinstale o driver da GPU. VocÃª pode desinstalar o driver usando a ferramenta de remoÃ§Ã£o do driver da fabricante da GPU, como `Drivers & Sensors` para Windows ou `AMD Radeon Software Crimson ReLive` para macOS. ApÃ³s isso, reinstale o driver usando o instalador fornecido pela fabricante da GPU.\n4. Verifique se hÃ¡ algum software que possa estar interferindo com a GPU e tente removÃª-lo ou desativÃ¡-lo. Por exemplo, alguns softwares de mineraÃ§Ã£o de criptomoedas podem ser responsÃ¡veis pelo consumo excessivo da GPU.\n5. Verifique se hÃ¡ algum problema de sobrecarga na GPU causada por outros processos ou aplicaÃ§Ãµes em execuÃ§Ã£o no computador e tente reduzir o nÃºmero de aplicaÃ§Ãµes em execuÃ§Ã£o ou limitar os recursos da GPU que elas podem usar.\n6. Tente reiniciar o computador e verifique se o problema persiste apÃ³s isso.\n7. Se nenhum desses passos resolver o problema, considere contatar a fabricante da GPU ou um profissional tÃ©cnico para uma soluÃ§Ã£o mais detalhada.'),
('Desktop', 'Custom built', 'Windows', 'Windows 10 home', 'i3 9th gen, radeon rx550, 16gb ram ', 'a gpu crasha', '3 meses, após atualização de drivers', 'Sim', 'Sim, a dizer q a gpu crashou.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 5, 'Por favor, nÃ£o hesite em perguntar no idioma que vocÃª se sente mais confortÃ¡vel.\n\nSeu GPU estÃ¡ apresentando problemas e estÃ¡ crashing? Isso pode ser causado por diversos fatores, como software ou hardware defectuosos, problemas de instalaÃ§Ã£o ou configuraÃ§Ã£o, ou atÃ© mesmo problemas de temperatura do dispositivo. Aqui estÃ£o alguns passos que podem ajudar a resolver o problema:\n\n1. Verifique se sua GPU estÃ¡ conectada corretamente Ã  sua placa-mÃ£e e ao seu fornecedor de energia.\n2. Certifique-se de que vocÃª tenha atualizado o seu controlador de GPU para a versÃ£o mais recente, caso nÃ£o esteja, siga as instruÃ§Ãµes da sua plataforma operacional para realizar a atualizaÃ§Ã£o.\n3. Desative e reative a GPU para verificar se isso resolve o problema. Em Windows, vocÃª pode fazer isso atravÃ©s do Painel de Controle > PerifÃ©ricos > Adaptadores de Video > Ativar ou Desativar os dispositivos > Desative e reative a sua GPU.\n4. Verifique se hÃ¡ problemas de temperatura na sua GPU. Ao usar o computador, vocÃª pode verificar a temperatura da GPU atravÃ©s do seu programa de monitoramento (por exemplo, HWMonitor) e certifique-se de que nÃ£o estiver muito quente.\n5. Verifique se estÃ¡ utilizando software compatÃ­vel com sua GPU. Alguns softwares podem causar problemas ao utilizar a GPU. Verifique se o seu software atual Ã© compatÃ­vel com sua GPU e siga as instruÃ§Ãµes para corrigir qualquer problema de compatibilidade.\n6. Reinstale o seu driver de GPU. Em Windows, vocÃª pode fazer isso atravÃ©s do Painel de Controle > PerifÃ©ricos > Adaptadores de Video > Atualizar Driver Software. Caso nÃ£o funcione, siga as instruÃ§Ãµes de atualizaÃ§Ã£o fornecidas pelo fabricante da sua GPU.\n7. Verifique se houve danos fÃ­sicos na sua GPU. Se vocÃª achar que ocorreram danos fÃ­sicos ou problemas mecÃ¢nicos na GPU, pode ser necessÃ¡ria a substituiÃ§Ã£o do dispositivo.\n8. Caso persista os problemas depois de tentar as soluÃ§Ãµes acima, talvez seja necessÃ¡rio consultar um tÃ©cnico especializado para verificar o problema e propor soluÃ§Ãµes mais adequadas ao seu caso especÃ­fico.'),
('Portátil', 'HP Pavilion', 'Windows', 'Windows 10', 'Ryzen 5 5500H, NVIDEA GTX 1650, 8GB RAM, 516GB', 'Quando está ligado à ficha e abre um programa que requere poder do CPU, a velocidade desce para 0,33GHz, principalmente quando uso rato ligado por USB.', 'Há 1 ano.', 'Sim', 'Não houve mensagens de erro.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 6, '1. **Driver Incompatibilidade**: It might be that the driver for your mouse is causing conflict with your CPU, leading to reduced performance. Try updating or reinstalling the mouse driver and see if it improves the situation.\n\n2. **USB Overload**: Having too many devices connected via USB can cause a bottleneck, reducing the overall system performance. Try disconnecting some of the devices and see if that helps.\n\n3. **Power Management Settings**: Check the power management settings for your mouse in Device Manager. Ensure that the \"Allow this computer to turn off this device to save power\" option is unchecked.\n\n4. **CPU Throttling**: It\'s possible that your system is intentionally slowing down (throttling) the CPU to prevent overheating or to conserve battery power. Check your system settings to see if there are any power-saving features that might be causing this issue.\n\n5. **Task Manager Resource Monitor**: Use the Task Manager\'s Resource Monitor to check for any processes that might be consuming a lot of CPU resources when your mouse is connected.\n\n6. **Check BIOS Settings**: In your BIOS settings, there might be options related to USB power management or CPU performance that could be affecting your system.\n\n7. **Hardware Issue**: If none of the above solutions work, it\'s possible that there\'s a hardware issue with your CPU or motherboard. In this case, you may need to consult a professional for further diagnosis and potential repair.'),
('Desktop', 'Asus', 'Windows', 'Windows 11 ', 'Intel I9-10900k, RX 590 FAtboy, 16gb ram', 'Monitor desligar quando jogar, gpu parar de dar quando reiniciar pc, monitor 144hz passa para 60hz e fica a usar driver do microsofata, quando monitor desliga eu ainda conseguir ouvir mininos discord e jogo', 'Começou tipo há umas semanas tipo 2 tipo 3', 'Sim', 'Não', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 7, '1. **AtualizaÃ§Ã£o do Driver de VÃ­deo**: Certifique-se que os seus drivers de vÃ­deo estÃ£o atualizados. Se nÃ£o tiver, faÃ§a a actualizaÃ§Ã£o dos mesmos. Ã‰ possÃ­vel que vocÃª tenha que instalar ou atualizar o seu GPU especificamente, uma vez que este Ã© o componente mais provÃ¡vel que esteja causando problemas.\n\n2. **AtualizaÃ§Ãµes do Sistema Operacional**: Verifique se o seu sistema operacional estÃ¡ a funcionar corretamente e se tiver atualizaÃ§Ãµes pendentes, instale-as. Isso pode resolver possÃ­veis erros de software que estejam causando problemas com o seu GPU.\n\n3. **ConfiguraÃ§Ã£o do Monitor**: Certifique-se que as configuraÃ§Ãµes do monitor estÃ£o corretamente definidas. Ã‰ possÃ­vel que vocÃª tenha que reiniciar o computador e entrar na configuraÃ§Ã£o do monitor para mudar a frequÃªncia de atualizaÃ§Ã£o para 144Hz, caso esteja a ser utilizada a frequÃªncia de 60Hz.\n\n4. **ConfiguraÃ§Ã£o do Discord**: Caso vocÃª consiga ouvir mÃºsica no Discord enquanto o monitor estÃ¡ desligado, isso significa que a sua conexÃ£o de Ã¡udio nÃ£o estÃ¡ ligada ao monitor. FaÃ§a as configuraÃ§Ãµes necessÃ¡rias para que o seu Ã¡udio seja re-rotencionado para os altifalantes do computador.\n\n5. **Reiniciar o Computador**: Se todos os passos anteriores nÃ£o tiverem efeito, reinicie o computador e veja se isso resolve o problema.\n\n6. **Limpeza da Unidade de VÃ­deo**: Certifique-se que a unidade de vÃ­deo (GPU) do seu computador esteja livre de poluiÃ§Ã£o ou impedimentos, pois este pode influenciar no seu desempenho e causar falhas como estas.\n\n7. **Teste com Jogos diferentes**: Tente jogar um jogo diferente para ver se o problema persiste. Caso nÃ£o persista, Ã© provÃ¡vel que o jogo esteja causando o problema.\n\n8. **Desinstalar e Reinstalar o Discord**: Desinstale e reinstale o Discord para resolver possÃ­veis problemas de software que estejam afectando o seu Ã¡udio.\n\n9. **Teste com um Monitor diferente**: Se puder, tente utilizar um monitor diferente para ver se o problema persiste. Caso nÃ£o persista, Ã© provÃ¡vel que o monitor esteja causando o problema.\n\n10. **Mecanico/ServiÃ§o de ReparaÃ§Ã£o**: Se nenhum dos passos anteriores resolver o problema, procure ajuda de um mecÃ¢nico ou serviÃ§o de reparaÃ§Ã£o de computadores. Ele pode identificar problemas fÃ­sicos na sua mÃ¡quina que podem nÃ£o ser resolvidos por meio de atualizaÃ§Ãµes ou configuraÃ§Ãµes.'),
('Portátil', 'Lenovo ideapad gaming 3 ', 'Windows', 'Windows 11 home', 'ryzen 5 5500, rtx 3050, 8gb ram ', 'o pc reinicia sozinho.', 'não lembro', 'Sim', 'não houve mensagens de erro ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 8, '1. Verifique se hÃ¡ atualizaÃ§Ãµes pendentes do sistema operacional e instale-as, caso contrÃ¡rio faÃ§a uma pesquisa especÃ­fica sobre a marca do seu computador para obter informaÃ§Ãµes sobre possÃ­veis atualizaÃ§Ãµes ou patches necessÃ¡rias.\n\n2. Verifique se hÃ¡ software malicioso (vÃ­rus, worms, trojans, etc.) instalado no computador e remova-o usando um utilitÃ¡rio de limpeza ou antivÃ­rus confiÃ¡vel. Em caso de dÃºvida, consulte com profissional tÃ©cnico.\n\n3. Verifique se hÃ¡ drivers ou dispositivos que possam estar causando o problema (por exemplo: dispositivo USB, cartÃ£o de rede, etc.). Se necessÃ¡rio, desconecte todos os dispositivos e reinicie o computador para verificar se o problema persiste.\n\n4. Verifique se hÃ¡ algum componente fÃ­sico que possa estar falhando no computador (por exemplo: memÃ³ria RAM, placas-mÃ£e, etc.). Em caso de dÃºvida, consulte com um tÃ©cnico profissional ou uma empresa de assistÃªncia tÃ©cnica.\n\n5. Verifique se o computador possui suficiente espaÃ§o em disco rÃ­gido e memÃ³ria RAM para executar as tarefas solicitadas. Em caso contrÃ¡rio, faÃ§a ajustes no computador (por exemplo: desinstale programas inutilizados ou limpe o disco rÃ­gido).\n\n6. Verifique se hÃ¡ alguma configuraÃ§Ã£o do sistema operacional que possa estar causando o problema. Por exemplo, se vocÃª modificou a configuraÃ§Ã£o do computador recentemente, verifique se essas alteraÃ§Ãµes podem estar causando o problema.\n\n7. FaÃ§a backup de todos os dados importantes e formate o disco rÃ­gido, para reinstalar o sistema operacional caso haja falha no mesmo.\n\n8. Em Ãºltima instÃ¢ncia, se nenhuma das soluÃ§Ãµes anteriores resolver o problema, considere trocar o computador por um novo, pois isso pode ser indicativo de uma falha interna ou problemas hardware que possam nÃ£o ser mais fÃ¡ceis de corrigir.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizador`
--

CREATE TABLE `utilizador` (
  `userid` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `utilizador`
--

INSERT INTO `utilizador` (`userid`, `Nome`, `email`, `password`) VALUES
(1, 'Jorge Teixeira', 'fagdfgag@gmail.com', '1234'),
(2, 'Pedro Barbedo', 'a16841@aetrofa.com', '$2y$10$wJacNMWLikYMWlXuPwOGuuOL74lBkg2xdgGJA.mluR0SNzXpVKlNy'),
(3, 'Matos lider', 'cotinha7426@gmail.com', '$2y$10$41RXSM/bPbouY4XGo/yeFe0kENC3/NVZepRghLb8N2kY/fs9X/EYe'),
(4, 'stanislaVvV', 'stasskkhriss@gmail.com', '$2y$10$gdO07tdAuX9FbC4jAkm1kOBvrDudEvE9rkCBZsZkvZaX8ubYIGobq');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `problemas`
--
ALTER TABLE `problemas`
  ADD PRIMARY KEY (`problemaid`),
  ADD KEY `userid` (`userid`);

--
-- Índices para tabela `utilizador`
--
ALTER TABLE `utilizador`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `problemas`
--
ALTER TABLE `problemas`
  MODIFY `problemaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `utilizador`
--
ALTER TABLE `utilizador`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `problemas`
--
ALTER TABLE `problemas`
  ADD CONSTRAINT `problemas_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `utilizador` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
