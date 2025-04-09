-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 06-Dez-2018 às 02:18
-- Versão do servidor: 5.6.20
-- versão do PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lali_test`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `idAvaliacao` int(10) UNSIGNED NOT NULL,
  `Nota` float NOT NULL,
  `Numero_Notas` float NOT NULL,
  `Nota_Passageiro` float NOT NULL,
  `idPassageiro` int(10) UNSIGNED NOT NULL,
  `IdMotorista` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `avaliacao`
--

INSERT INTO `avaliacao` (`idAvaliacao`, `Nota`, `Numero_Notas`, `Nota_Passageiro`, `idPassageiro`, `IdMotorista`) VALUES
(1, 5, 1, 5, 2, 1),
(2, 4.5, 2, 4, 3, 1),
(3, 4.667, 3, 5, 4, 1),
(4, 4.75, 4, 5, 5, 1),
(5, 4.6, 5, 4, 6, 1),
(6, 4, 1, 4, 7, 2),
(7, 4.5, 2, 5, 8, 2),
(8, 4.667, 3, 5, 9, 2),
(9, 4.75, 4, 5, 10, 2),
(10, 4.6, 5, 4, 11, 2),
(11, 4, 1, 4, 12, 3),
(12, 3.5, 2, 3, 13, 3),
(13, 3.333, 3, 3, 14, 3),
(14, 3.75, 4, 5, 15, 3),
(15, 4, 5, 5, 16, 3),
(16, 4, 1, 4, 17, 4),
(17, 4, 2, 4, 18, 4),
(18, 4, 3, 4, 19, 4),
(19, 4, 4, 4, 20, 4),
(20, 4, 5, 4, 21, 4),
(21, 4, 1, 4, 22, 5),
(22, 4.5, 2, 5, 23, 5),
(23, 4.667, 3, 5, 24, 5),
(24, 4.5, 4, 4, 25, 5),
(25, 4.2, 5, 3, 26, 5),
(26, 3, 1, 3, 27, 6),
(27, 3, 2, 3, 28, 6),
(28, 2.667, 3, 2, 29, 6),
(29, 2.5, 4, 2, 30, 6),
(30, 2.4, 5, 2, 31, 6),
(31, 1, 1, 1, 1, 7),
(32, 1, 2, 1, 2, 7),
(33, 1.333, 3, 2, 3, 7),
(34, 1.75, 4, 3, 4, 7),
(35, 2, 1, 2, 5, 8),
(36, 2.5, 2, 3, 6, 8),
(37, 2.333, 3, 2, 7, 8),
(38, 2.5, 4, 3, 8, 8),
(39, 2.6, 5, 3, 9, 8),
(40, 5, 1, 5, 10, 9),
(41, 4, 2, 3, 11, 9),
(42, 3.667, 3, 3, 12, 9),
(43, 3, 1, 3, 13, 10),
(44, 2.5, 2, 2, 14, 10),
(45, 2.333, 3, 2, 15, 10),
(46, 2.75, 4, 4, 16, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carona`
--

CREATE TABLE `carona` (
  `idCarona` int(10) UNSIGNED NOT NULL,
  `Data` date NOT NULL,
  `Partida` varchar(45) NOT NULL,
  `Chegada` varchar(45) NOT NULL,
  `Horario` time(4) NOT NULL,
  `Valor` float UNSIGNED NOT NULL,
  `Veiculo` varchar(20) NOT NULL,
  `Numero_Vagas` int(10) UNSIGNED NOT NULL,
  `Repetir` varchar(30) DEFAULT NULL,
  `idMotorista` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `carona`
--

INSERT INTO `carona` (`idCarona`, `Data`, `Partida`, `Chegada`, `Horario`, `Valor`, `Veiculo`, `Numero_Vagas`, `Repetir`, `idMotorista`) VALUES
(1, '2018-11-05', 'Canoas', 'Guaiba-UERGS', '07:30:00.0000', 5, 'HB20', 3, '', 1),
(2, '2018-11-05', 'Guaiba-UERGS', 'Canoas', '12:30:00.0000', 5, 'HB20', 3, '', 1),
(3, '2018-11-05', 'Canoas', 'Guaiba-UERGS', '07:30:00.0000', 5, 'ONIX', 3, '', 2),
(4, '2018-11-05', 'Guaiba-UERGS', 'Canoas', '17:00:00.0000', 5, 'ONIX', 3, '', 2),
(5, '2018-11-05', 'Porto Alegre', 'Guaiba-UERGS', '08:00:00.0000', 5, 'FOX', 3, '', 3),
(6, '2018-11-05', 'Guaiba-UERGS', 'Porto Alegre', '12:30:00.0000', 5, 'FOX', 3, '', 3),
(7, '2018-11-05', 'Porto Alegre', 'Guaiba-UERGS', '07:00:00.0000', 4.5, 'UNO', 3, '', 4),
(8, '2018-11-05', 'Guaiba-UERGS', 'Porto Alegre', '12:00:00.0000', 5, 'UNO', 3, '', 4),
(9, '2018-11-05', 'Guaiba', 'Guaiba-UERGS', '07:30:00.0000', 6, 'ELANTRA', 3, '', 5),
(10, '2018-11-05', 'Guaiba-UERGS', 'Guaiba', '12:30:00.0000', 6, 'ELANTRA', 3, '', 5),
(11, '2018-11-05', 'Guaiba', 'Guaiba-UERGS', '12:30:00.0000', 5, 'CIVIC', 3, '', 6),
(12, '2018-11-05', 'Guaiba-UERGS', 'Guaiba', '17:00:00.0000', 5, 'CIVIC', 3, '', 6),
(13, '2018-11-05', 'Porto Alegre', 'Guaiba-UERGS', '07:30:00.0000', 5, 'MEGANIUM', 3, '', 7),
(14, '2018-11-05', 'Guaiba-UERGS', 'Porto Alegre', '12:30:00.0000', 5, 'MEGANIUM', 3, '', 7),
(15, '2018-11-05', 'Guaiba', 'Guaiba-UERGS', '07:30:00.0000', 5, 'BRASILIA', 3, '', 8),
(16, '2018-11-05', 'Guaiba-UERGS', 'Guaiba', '12:30:00.0000', 5, 'BRASILIA', 3, '', 8);

-- --------------------------------------------------------

--
-- Stand-in structure for view `info_caronas`
-- (See below for the actual view)
--
CREATE TABLE `info_caronas` (
`Id` int(10) unsigned
,`motorista` varchar(45)
,`data` date
,`hora` time(4)
,`valor` float unsigned
,`vagas` int(10) unsigned
,`veiculo` varchar(20)
,`partida` varchar(45)
,`chegada` varchar(45)
,`locais` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `locais_de_parada`
--

CREATE TABLE `locais_de_parada` (
  `idParada` int(10) UNSIGNED NOT NULL,
  `Descricao` varchar(45) NOT NULL,
  `idCarona` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `locais_de_parada`
--

INSERT INTO `locais_de_parada` (`idParada`, `Descricao`, `idCarona`) VALUES
(1, 'Casa Lincoln', 1),
(2, 'Posto meio do caminho', 1),
(3, 'UERGS Guaiba', 1),
(4, 'UERGS Guaiba', 2),
(5, 'Posto meio do caminho', 2),
(6, 'Casa Lincoln', 2),
(7, 'Casa Yuri', 3),
(8, 'Posto 2 Meio do caminho', 3),
(9, 'UERGS Guaiba', 3),
(10, 'Casa Yuri', 4),
(11, 'UERGS Guaiba', 4),
(12, 'Centro Porto Alegre', 5),
(13, 'Yamaha - Dona Rafaela	', 5),
(14, 'UERGS Guaiba', 5),
(15, 'UERGS Guaiba', 6),
(16, 'Yamaha - Dona Rafaela', 6),
(17, 'Centro Porto Alegre', 6),
(18, 'Centro Porto Alegre', 7),
(19, 'Posto 2 Meio do caminho', 7),
(20, 'Yamaha - Dona Rafaela', 7),
(21, 'UERGS Guaiba', 7),
(22, 'UERGS Guaiba', 8),
(23, 'Yamaha - Dona Rafaela', 8),
(24, 'Posto 2 Meio do caminho', 8),
(25, 'Centro Porto Alegre', 8),
(26, 'Guaiba Centro', 9),
(27, 'Ulbra Guaiba', 9),
(28, 'UERGS Guaiba', 9),
(29, 'UERGS Guaiba', 10),
(30, 'Ulbra Guaiba', 10),
(31, 'Guaiba Centro', 10),
(32, 'Guaiba Centro', 11),
(33, 'Ulbra Guaiba', 11),
(34, 'UERGS Guaiba', 11),
(35, 'UERGS Guaiba', 12),
(36, 'Ulbra Guaiba', 12),
(37, 'Subway Centro Guaiba', 12),
(38, 'Guaiba Centro', 12),
(39, 'Centro Porto Alegre', 13),
(40, 'Rodoviaria Poa', 13),
(41, 'UERGS Guaiba', 13),
(42, 'UERGS Guaiba', 14),
(43, 'Rodoviaria Poa', 14),
(44, 'Centro Porto Alegre', 14),
(45, 'Guaiba Centro', 15),
(46, 'Ulbra Guaiba', 15),
(47, 'UERGS Guaiba', 15),
(48, 'UERGS Guaiba', 16),
(49, 'Ulbra Guaiba', 16),
(50, 'Guaiba Centro', 16);

-- --------------------------------------------------------

--
-- Estrutura da tabela `motorista`
--

CREATE TABLE `motorista` (
  `idMotorista` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Endereco_Cidade` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `motorista`
--

INSERT INTO `motorista` (`idMotorista`, `Nome`, `Telefone`, `Email`, `Endereco_Cidade`) VALUES
(1, 'Lincoln Schreiber', '51983568456', 'lin-sch@gmail.com', 'Canoas'),
(2, 'Yuri Justen', '51983466222	', 'yur-jus@gmail.com', 'Canoas'),
(3, 'Giovani Severino', '51983714200	', 'gio-sev@gmail.com', 'Porto Alegre'),
(4, 'Gabriel Luís Nunes', '51985538998 ', 'gab-lui@gmail.com', 'Porto Alegre'),
(5, 'Pedro Henrique', '51992026015 ', 'ped-hen@gmail.com', 'Guaiba'),
(6, 'Samuel Erick', '51993369990 ', 'sam-eri@gmail.com', 'Guaiba'),
(7, 'Marina Patrícia', '51983744411 ', 'mar-pat@gmail.com', 'Porto Alegre'),
(8, 'Allana Marcela', '51988279715 ', 'all-mar@gmail.com', 'Guaiba'),
(9, 'Kauê Vinicius Costa', '51987960803 ', 'kau-vin@gmail.com', 'Porto Alegre'),
(10, 'Valentina Ana', '51991472532 ', 'val-ana@gmail.com', 'Porto Alegre');

-- --------------------------------------------------------

--
-- Stand-in structure for view `motoristas_com_hb20`
-- (See below for the actual view)
--
CREATE TABLE `motoristas_com_hb20` (
`NOME MOTORISTA` varchar(45)
,`CARRITO` varchar(20)
,`PASSAGEIRO` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `passageiro`
--

CREATE TABLE `passageiro` (
  `idPassageiro` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Endereco_Cidade` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `passageiro`
--

INSERT INTO `passageiro` (`idPassageiro`, `Nome`, `Telefone`, `Email`, `Endereco_Cidade`) VALUES
(1, 'Lincoln Schreiber', '51983568456', 'lin-sch@gmail.com', 'Canoas'),
(2, 'Larissa Justen', '51983624622	', 'lar-jus@gmail.com', 'Porto Alegre'),
(3, 'Martin Severino', '51983174200	', 'mar-sev@gmail.com', 'Porto Alegre'),
(4, 'Thales Luís Nunes', '51983558998 ', 'tha-lui@gmail.com', 'Porto Alegre'),
(5, 'Pedro Henrique', '51992026015 ', 'ped-hen@gmail.com', 'Guaiba'),
(6, 'Guilherme Sales', '51993399690 ', 'gui-sal@gmail.com', 'Guaiba'),
(7, 'Alexandre Ryan', '51981770490 ', 'ale-rya@gmail.com', 'Guaiba'),
(8, 'Leandro Nathan ', '51988729715 ', 'lea-nat@gmail.com', 'Guaiba'),
(9, 'Aurora Luana', '51987608624 ', 'aur-lua@gmail.com', 'Porto Alegre'),
(10, 'Valentina Ana', '51991472532 ', 'val-ana@gmail.com', 'Porto Alegre'),
(11, 'Sophia Fernandes', '51983341320 ', 'sop-fer@gmail.com', 'Porto Alegre'),
(12, 'Isabelly Sara', '51991397233 ', 'isa-sar@gmail.com', 'Guaiba'),
(13, 'Tatiane Emanuelly', '51993790484 ', 'tat-ema@gmail.com', 'Porto Alegre'),
(14, 'Joana Bárbara Vieira', '51989341187 ', 'joa-bar@gmail.com', 'Porto Alegre'),
(15, 'Letícia Cláudia', '51982423107 ', 'let-cla@gmail.com', 'Porto Alegre'),
(16, 'Flávia Ester Pietra ', '51981130268 ', 'fla-est@gmail.com', 'Porto Alegre'),
(17, 'Rita Sebastiana', '51999469124 ', 'rit-seb@gmail.com', 'Porto Alegre'),
(18, 'Heloise Mirella ', '51992774466 ', 'hel-mir@gmail.com', 'Guaiba'),
(19, 'Lavínia Vera', '51994135148 ', 'lav-ver@gmail.com', 'Eldorado do Sul'),
(20, 'Bianca Nair Mariana ', '51989663663 ', 'bia-nai@gmail.com', 'Porto Alegre'),
(21, 'Larissa Elza da Mota', '51984269970 ', 'lar-elz@gmail.com', 'Porto Alegre'),
(22, 'Marina Patrícia', '51983744411 ', 'mar-pat@gmail.com', 'Porto Alegre'),
(23, 'Regina Amanda Vieira', '51988845188 ', 'reg-ama@gmail.com', 'Eldorado do Sul'),
(24, 'Sebastiana Jennifer ', '51984420334 ', 'seb-jen@gmail.com', 'Porto Alegre'),
(25, 'Beatriz Débora', '51985957210 ', 'bea-deb@gmail.com', 'Guaiba'),
(26, 'Marcela Lúcia', '51984983375 ', 'mar-luc@gmail.com', 'Porto Alegre'),
(27, 'Mirella Tereza', '51983873111 ', 'mir-ter@gmail.com', 'Guaiba'),
(28, 'Larissa Luiza Castro', '51994640465 ', 'lar-lui@gmail.com', 'Porto Alegre'),
(29, 'Márcia Larissa Silva', '51995966085 ', 'mar-lar@gmail.com', 'Eldorado do Sul'),
(30, 'Kauê Vinicius Costa', '51987960803 ', 'kau-vin@gmail.com', 'Porto Alegre'),
(31, 'Joaquim Francisco', '51989338498 ', 'joa-fra@gmail.com', 'Porto Alegre');

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicitar_carona`
--

CREATE TABLE `solicitar_carona` (
  `idPassageiro` int(10) UNSIGNED NOT NULL,
  `idCarona` int(10) UNSIGNED NOT NULL,
  `Local_Escolhido` varchar(45) NOT NULL,
  `Status` binary(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `solicitar_carona`
--

INSERT INTO `solicitar_carona` (`idPassageiro`, `idCarona`, `Local_Escolhido`, `Status`) VALUES
(2, 1, '1', 0x31),
(2, 2, '6', 0x31),
(3, 15, '46', 0x30),
(3, 16, '49', 0x30),
(4, 9, '27', 0x31),
(4, 10, '30', 0x31),
(6, 9, '27', 0x31),
(6, 10, '30', 0x31),
(7, 11, '33', 0x31),
(7, 12, '35', 0x31),
(8, 5, '13', NULL),
(8, 6, '16', NULL),
(9, 9, '27', 0x30),
(9, 10, '30', NULL),
(11, 3, '8', NULL),
(11, 4, '10', 0x30),
(12, 3, '8', NULL),
(12, 4, '10', NULL),
(13, 1, '2', NULL),
(13, 2, '5', 0x30),
(14, 11, '33', NULL),
(14, 12, '55', 0x30),
(15, 5, '13', NULL),
(15, 6, '16', NULL),
(16, 9, '27', NULL),
(16, 10, '30', 0x30),
(17, 1, '1', NULL),
(17, 2, '6', NULL),
(18, 5, '12', NULL),
(18, 6, '17', 0x30),
(19, 7, '18', NULL),
(19, 8, '24', NULL),
(20, 9, '27', 0x30),
(20, 10, '31', NULL),
(21, 15, '45', NULL),
(21, 16, '50', 0x30),
(23, 13, '39', NULL),
(23, 14, '44', 0x30),
(24, 13, '39', NULL),
(24, 14, '44', NULL),
(25, 11, '33', 0x31),
(25, 12, '55', 0x31),
(26, 3, '8', NULL),
(26, 4, '10', NULL),
(27, 1, '2', 0x31),
(27, 2, '5', 0x30),
(27, 14, '44', 0x31),
(28, 3, '8', 0x31),
(28, 4, '10', 0x31),
(29, 5, '13', NULL),
(29, 6, '16', NULL),
(31, 7, '18', 0x31),
(31, 8, '24', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_avaliacoes`
-- (See below for the actual view)
--
CREATE TABLE `view_avaliacoes` (
`Nome Do Motorista` varchar(45)
,`Nota recebida` float
,`Avaliador` varchar(45)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_caronaspoa`
-- (See below for the actual view)
--
CREATE TABLE `view_caronaspoa` (
`NOME PASSAGEIRO` varchar(45)
,`LOCAL DE PARTIDA` varchar(45)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_valor5`
-- (See below for the actual view)
--
CREATE TABLE `view_valor5` (
`NOME PASSAGEIRO` varchar(45)
,`VALOR` float unsigned
,`NOME MOTORISTA` varchar(45)
);

-- --------------------------------------------------------

--
-- Structure for view `info_caronas`
--
DROP TABLE IF EXISTS `info_caronas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `info_caronas`  AS  select `carona`.`idCarona` AS `Id`,`motorista`.`Nome` AS `motorista`,`carona`.`Data` AS `data`,`carona`.`Horario` AS `hora`,`carona`.`Valor` AS `valor`,`carona`.`Numero_Vagas` AS `vagas`,`carona`.`Veiculo` AS `veiculo`,`carona`.`Partida` AS `partida`,`carona`.`Chegada` AS `chegada`,`locais_de_parada`.`Descricao` AS `locais` from ((`carona` join `motorista` on((`motorista`.`idMotorista` = `carona`.`idMotorista`))) join `locais_de_parada` on((`locais_de_parada`.`idCarona` = `carona`.`idCarona`))) ;

-- --------------------------------------------------------

--
-- Structure for view `motoristas_com_hb20`
--
DROP TABLE IF EXISTS `motoristas_com_hb20`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `motoristas_com_hb20`  AS  select `motorista`.`Nome` AS `NOME MOTORISTA`,`carona`.`Veiculo` AS `CARRITO`,`passageiro`.`Nome` AS `PASSAGEIRO` from (((`carona` join `motorista` on((`motorista`.`idMotorista` = `carona`.`idMotorista`))) join `solicitar_carona` on((`carona`.`idCarona` = `solicitar_carona`.`idCarona`))) join `passageiro` on((`solicitar_carona`.`idPassageiro` = `passageiro`.`idPassageiro`))) where (`carona`.`Veiculo` like 'Hb20') ;

-- --------------------------------------------------------

--
-- Structure for view `view_avaliacoes`
--
DROP TABLE IF EXISTS `view_avaliacoes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_avaliacoes`  AS  select `motorista`.`Nome` AS `Nome Do Motorista`,`avaliacao`.`Nota_Passageiro` AS `Nota recebida`,`passageiro`.`Nome` AS `Avaliador` from ((`avaliacao` join `passageiro` on((`passageiro`.`idPassageiro` = `avaliacao`.`idPassageiro`))) join `motorista` on((`motorista`.`idMotorista` = `avaliacao`.`IdMotorista`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_caronaspoa`
--
DROP TABLE IF EXISTS `view_caronaspoa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_caronaspoa`  AS  select `passageiro`.`Nome` AS `NOME PASSAGEIRO`,`carona`.`Partida` AS `LOCAL DE PARTIDA` from ((`solicitar_carona` join `carona` on((`carona`.`idCarona` = `solicitar_carona`.`idCarona`))) join `passageiro` on((`solicitar_carona`.`idPassageiro` = `passageiro`.`idPassageiro`))) where (`carona`.`Partida` like 'Porto Alegre') ;

-- --------------------------------------------------------

--
-- Structure for view `view_valor5`
--
DROP TABLE IF EXISTS `view_valor5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_valor5`  AS  select `passageiro`.`Nome` AS `NOME PASSAGEIRO`,`carona`.`Valor` AS `VALOR`,`motorista`.`Nome` AS `NOME MOTORISTA` from (((`carona` join `motorista` on((`motorista`.`idMotorista` = `carona`.`idMotorista`))) join `solicitar_carona` on((`carona`.`idCarona` = `solicitar_carona`.`idCarona`))) join `passageiro` on((`solicitar_carona`.`idPassageiro` = `passageiro`.`idPassageiro`))) where (`carona`.`Valor` like '5') ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`idAvaliacao`),
  ADD KEY `idPassageiro` (`idPassageiro`),
  ADD KEY `idMotorista_` (`IdMotorista`);

--
-- Indexes for table `carona`
--
ALTER TABLE `carona`
  ADD PRIMARY KEY (`idCarona`),
  ADD KEY `idMotorista` (`idMotorista`);

--
-- Indexes for table `locais_de_parada`
--
ALTER TABLE `locais_de_parada`
  ADD PRIMARY KEY (`idParada`),
  ADD KEY `idCarona` (`idCarona`);

--
-- Indexes for table `motorista`
--
ALTER TABLE `motorista`
  ADD PRIMARY KEY (`idMotorista`);

--
-- Indexes for table `passageiro`
--
ALTER TABLE `passageiro`
  ADD PRIMARY KEY (`idPassageiro`);

--
-- Indexes for table `solicitar_carona`
--
ALTER TABLE `solicitar_carona`
  ADD KEY `idPassageiro_` (`idPassageiro`),
  ADD KEY `idCarona_` (`idCarona`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `idAvaliacao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `carona`
--
ALTER TABLE `carona`
  MODIFY `idCarona` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `locais_de_parada`
--
ALTER TABLE `locais_de_parada`
  MODIFY `idParada` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `motorista`
--
ALTER TABLE `motorista`
  MODIFY `idMotorista` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `passageiro`
--
ALTER TABLE `passageiro`
  MODIFY `idPassageiro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD CONSTRAINT `idMotorista_` FOREIGN KEY (`IdMotorista`) REFERENCES `motorista` (`idMotorista`),
  ADD CONSTRAINT `idPassageiro` FOREIGN KEY (`idPassageiro`) REFERENCES `passageiro` (`idPassageiro`);

--
-- Limitadores para a tabela `carona`
--
ALTER TABLE `carona`
  ADD CONSTRAINT `idMotorista` FOREIGN KEY (`idMotorista`) REFERENCES `motorista` (`idMotorista`);

--
-- Limitadores para a tabela `locais_de_parada`
--
ALTER TABLE `locais_de_parada`
  ADD CONSTRAINT `idCarona` FOREIGN KEY (`idCarona`) REFERENCES `carona` (`idCarona`);

--
-- Limitadores para a tabela `solicitar_carona`
--
ALTER TABLE `solicitar_carona`
  ADD CONSTRAINT `idCarona_` FOREIGN KEY (`idCarona`) REFERENCES `carona` (`idCarona`),
  ADD CONSTRAINT `idPassageiro_` FOREIGN KEY (`idPassageiro`) REFERENCES `passageiro` (`idPassageiro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
