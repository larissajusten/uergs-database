-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 06-Nov-2018 às 05:17
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
-- Database: `lali_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `idAvaliacao` int(10) UNSIGNED NOT NULL,
  `Nota` float NOT NULL,
  `Numero_Notas` float NOT NULL,
  `idPassageiro` int(10) UNSIGNED NOT NULL,
  `IdMotorista` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `locais_de_parada`
--

CREATE TABLE `locais_de_parada` (
  `idParada` int(10) UNSIGNED NOT NULL,
  `Descricao` varchar(45) NOT NULL,
  `idCarona` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `motorista`
--

CREATE TABLE `motorista` (
  `idMotorista` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Telefone` float UNSIGNED NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Endereco_Cidade` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `passageiro`
--

CREATE TABLE `passageiro` (
  `idPassageiro` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Telefone` float UNSIGNED NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Endereco_Cidade` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicitar_carona`
--

CREATE TABLE `solicitar_carona` (
  `idPassageiro` int(10) UNSIGNED NOT NULL,
  `idCarona` int(10) UNSIGNED NOT NULL,
  `Local_Escolhido` varchar(45) NOT NULL,
  `Status` binary(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `idAvaliacao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carona`
--
ALTER TABLE `carona`
  MODIFY `idCarona` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locais_de_parada`
--
ALTER TABLE `locais_de_parada`
  MODIFY `idParada` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `motorista`
--
ALTER TABLE `motorista`
  MODIFY `idMotorista` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `passageiro`
--
ALTER TABLE `passageiro`
  MODIFY `idPassageiro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
