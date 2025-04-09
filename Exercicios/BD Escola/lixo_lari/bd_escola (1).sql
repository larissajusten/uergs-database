-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 17-Out-2018 às 03:59
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
-- Database: `bd_escola`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `nroMatricula` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `CPF` char(11) NOT NULL,
  `RG` char(10) NOT NULL,
  `dtNascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`nroMatricula`, `nome`, `CPF`, `RG`, `dtNascimento`) VALUES
(1, 'Lincoln Schreiber', '28644145037', '125921007', '1997-01-29'),
(2, 'Larissa Justen', '22714871020', '470046508', '1998-06-16'),
(3, 'Martin Severino Lope', '75116933008', '435181038', '1996-10-26'),
(4, 'Thales Luís Nunes', '48543325064', '380270845', '1998-08-18'),
(5, 'Pedro Henrique', '87408699031', '309755256', '1998-08-09'),
(6, 'Guilherme Sales', '83292411068', '128823884', '1997-01-05'),
(7, 'Alexandre Ryan Viana', '83076122096', '137500609', '1997-05-05'),
(8, 'Leandro Nathan Peixo', '19061225043', '494254877', '1997-05-25'),
(9, 'Aurora Luana Rodrigu', '5197958065', '407091956', '1998-05-25'),
(10, 'Valentina Ana', '9364568095', '121672463', '1999-05-25'),
(11, 'Sophia Fernandes', '31816989037', '230520698', '1999-12-25'),
(12, 'Isabelly Sara', '15599332080', '488838708', '1999-03-25'),
(13, 'Tatiane Emanuelly', '19838211010', '360523328', '1999-03-10'),
(14, 'Joana Bárbara Vieira', '60015954021', '342874378', '1995-03-12'),
(15, 'Letícia Cláudia Nasc', '96239309095', '228255417', '1993-08-18'),
(16, 'Flávia Ester Pietra ', '92984967020', '432370043', '1996-08-18'),
(17, 'Rita Sebastiana Frei', '41751856070', '343725848', '1996-12-18'),
(18, 'Heloise Mirella Port', '23620745013', '463848949', '1996-01-18'),
(19, 'Lavínia Vera Silveir', '16369010006', '215869758', '1996-02-18'),
(20, 'Bianca Nair Mariana ', '76836994030', '424080059', '1996-03-18'),
(21, 'Larissa Elza da Mota', '91430017007', '481871111', '1996-04-18'),
(22, 'Marina Patrícia Stef', '57801743008', '343496823', '1996-05-18'),
(23, 'Regina Amanda Vieira', '63178304010', '102558103', '1996-06-18'),
(24, 'Sebastiana Jennifer ', '2929979062', '219511305', '1996-07-18'),
(25, 'Beatriz Débora Brend', '34591459004', '142002276', '1996-08-18'),
(26, 'Marcela Lúcia Yasmin', '46051411038', '105148908', '1996-09-18'),
(27, 'Mirella Tereza Olive', '99915196024', '147772941', '1996-10-18'),
(28, 'Larissa Luiza Castro', '79715225098', '148187675', '1996-11-18'),
(29, 'Márcia Larissa Silva', '107758015', '148187675', '1998-11-18'),
(30, 'Kauê Vinicius Costa', '56609730008', '303770053', '1998-05-18'),
(31, 'Joaquim Francisco Me', '9107004001', '197724863', '1998-06-18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `idcurso` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `cargaHoraria` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`idcurso`, `descricao`, `cargaHoraria`) VALUES
(1, 'Eng. Computação', 4000),
(2, 'Sistemas Embarcados', 3200),
(3, 'Automação', 800),
(4, 'Pedagogia', 880);

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

CREATE TABLE `matricula` (
  `nroMatricula` int(11) NOT NULL,
  `idTurma` int(10) UNSIGNED NOT NULL,
  `dtMatricula` date NOT NULL,
  `valor` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `matricula`
--

INSERT INTO `matricula` (`nroMatricula`, `idTurma`, `dtMatricula`, `valor`) VALUES
(1, 1, '2017-03-17', '1000.00'),
(2, 1, '2017-03-17', '1000.00'),
(15, 1, '2017-03-17', '1000.00'),
(16, 1, '2017-03-17', '1000.00'),
(7, 2, '2017-08-17', '1200.00'),
(3, 2, '2017-08-17', '1200.00'),
(4, 2, '2017-08-17', '1200.00'),
(17, 2, '2017-08-17', '1200.00'),
(5, 2, '2017-08-17', '1200.00'),
(23, 3, '2018-03-17', '1400.00'),
(24, 3, '2018-03-17', '1400.00'),
(25, 3, '2018-03-17', '1400.00'),
(21, 4, '2018-08-17', '1600.00'),
(22, 4, '2018-08-17', '1600.00'),
(25, 4, '2018-08-17', '1600.00'),
(26, 4, '2018-08-17', '1600.00'),
(18, 4, '2018-08-17', '1600.00'),
(1, 5, '2017-03-17', '1000.00'),
(2, 5, '2017-03-17', '1000.00'),
(3, 5, '2017-03-17', '1000.00'),
(4, 5, '2017-03-17', '1000.00'),
(9, 6, '2017-08-17', '800.00'),
(10, 6, '2017-08-17', '800.00'),
(11, 6, '2017-08-17', '800.00'),
(12, 6, '2017-08-17', '800.00'),
(13, 6, '2017-08-17', '800.00'),
(18, 7, '2018-03-17', '1200.00'),
(19, 7, '2018-03-17', '1200.00'),
(20, 7, '2018-03-17', '1200.00'),
(25, 8, '2018-08-17', '1400.00'),
(26, 8, '2018-08-17', '1400.00'),
(27, 8, '2018-08-17', '1400.00'),
(28, 8, '2018-08-17', '1400.00'),
(29, 8, '2018-08-17', '1400.00'),
(2, 9, '2017-03-17', '600.00'),
(9, 9, '2017-03-17', '600.00'),
(10, 9, '2017-03-17', '600.00'),
(11, 9, '2017-03-17', '600.00'),
(1, 10, '2017-08-17', '600.00'),
(3, 10, '2017-08-17', '600.00'),
(4, 10, '2017-08-17', '600.00'),
(5, 10, '2017-08-17', '600.00'),
(6, 10, '2017-08-17', '600.00'),
(31, 11, '2018-03-17', '800.00'),
(30, 11, '2018-03-17', '800.00'),
(29, 11, '2018-03-17', '800.00'),
(24, 12, '2018-08-17', '1100.00'),
(23, 12, '2018-08-17', '1100.00'),
(22, 12, '2018-08-17', '1100.00'),
(21, 12, '2018-08-17', '1100.00'),
(20, 12, '2018-08-17', '1100.00'),
(12, 13, '2017-03-17', '800.00'),
(21, 13, '2017-03-17', '800.00'),
(5, 13, '2017-03-17', '800.00'),
(6, 13, '2017-03-17', '800.00'),
(7, 14, '2017-08-17', '1000.00'),
(3, 14, '2017-08-17', '1000.00'),
(4, 14, '2017-08-17', '1000.00'),
(17, 14, '2017-08-17', '1000.00'),
(5, 14, '2017-08-17', '1000.00'),
(23, 15, '2018-03-17', '1200.00'),
(24, 15, '2018-03-17', '1200.00'),
(25, 15, '2018-03-17', '1200.00'),
(21, 16, '2018-08-17', '1400.00'),
(22, 16, '2018-08-17', '1400.00'),
(25, 16, '2018-08-17', '1400.00'),
(26, 16, '2018-08-17', '1400.00'),
(18, 16, '2018-08-17', '1400.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `idTurma` int(10) UNSIGNED NOT NULL,
  `dtInicio` date NOT NULL,
  `dtFim` date NOT NULL,
  `idCurso` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`idTurma`, `dtInicio`, `dtFim`, `idCurso`) VALUES
(1, '2017-03-18', '2017-07-12', 1),
(2, '2017-08-18', '2017-12-20', 1),
(3, '2018-03-18', '2018-07-12', 1),
(4, '2018-08-18', '2018-12-20', 1),
(5, '2017-03-18', '2017-07-12', 2),
(6, '2017-08-18', '2017-12-20', 2),
(7, '2018-03-18', '2018-07-12', 2),
(8, '2018-08-18', '2018-12-20', 2),
(9, '2017-03-18', '2017-07-12', 3),
(10, '2017-08-18', '2017-12-20', 3),
(11, '2018-03-18', '2018-07-12', 3),
(12, '2018-08-18', '2018-12-20', 3),
(13, '2017-03-18', '2017-07-12', 4),
(14, '2017-08-18', '2017-12-20', 4),
(15, '2018-03-18', '2018-07-12', 4),
(16, '2018-08-18', '2018-12-20', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`nroMatricula`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idcurso`);

--
-- Indexes for table `matricula`
--
ALTER TABLE `matricula`
  ADD KEY `nroMatricula` (`nroMatricula`),
  ADD KEY `idTurma` (`idTurma`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`idTurma`),
  ADD KEY `idCurso` (`idCurso`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `nroMatricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `idcurso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `matricula`
--
ALTER TABLE `matricula`
  MODIFY `nroMatricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `idTurma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`idTurma`) REFERENCES `turma` (`idTurma`),
  ADD CONSTRAINT `nroMatricula` FOREIGN KEY (`nroMatricula`) REFERENCES `aluno` (`nroMatricula`);

--
-- Limitadores para a tabela `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `idCurso` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idcurso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
