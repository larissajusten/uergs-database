-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 23-Nov-2018 às 17:55
-- Versão do servidor: 5.6.20
-- versão do PHP: 5.5.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: lali_db
--

-- --------------------------------------------------------

--
-- Estrutura da tabela avaliacao
--

CREATE TABLE IF NOT EXISTS avaliacao (
  idAvaliacao integer PRIMARY KEY AUTOINCREMENT,
  Nota float NOT NULL,
  Numero_Notas float NOT NULL,
  Nota_Passageiro float NOT NULL,
  idPassageiro integer UNSIGNED NOT NULL,
  IdMotorista integer UNSIGNED NOT NULL,
  FOREIGN KEY (IdMotorista) REFERENCES motorista (idMotorista),
  FOREIGN KEY (idPassageiro) REFERENCES passageiro (idPassageiro)
) ;

--
-- Extraindo dados da tabela avaliacao
--

INSERT INTO avaliacao (idAvaliacao, Nota, Numero_Notas, Nota_Passageiro, idPassageiro, IdMotorista) VALUES
(NULL, 5, 1, 5, 2, 1),
(NULL, 4.5, 2, 4, 3, 1),
(NULL, 4.667, 3, 5, 4, 1),
(NULL, 4.75, 4, 5, 5, 1),
(NULL, 4.6, 5, 4, 6, 1),
(NULL, 4, 1, 4, 7, 2),
(NULL, 4.5, 2, 5, 8, 2),
(NULL, 4.667, 3, 5, 9, 2),
(NULL, 4.75, 4, 5, 10, 2),
(NULL, 4.6, 5, 4, 11, 2),
(NULL, 4, 1, 4, 12, 3),
(NULL, 3.5, 2, 3, 13, 3),
(NULL, 3.333, 3, 3, 14, 3),
(NULL, 3.75, 4, 5, 15, 3),
(NULL, 4, 5, 5, 16, 3),
(NULL, 4, 1, 4, 17, 4),
(NULL, 4, 2, 4, 18, 4),
(NULL, 4, 3, 4, 19, 4),
(NULL, 4, 4, 4, 20, 4),
(NULL, 4, 5, 4, 21, 4),
(NULL, 4, 1, 4, 22, 5),
(NULL, 4.5, 2, 5, 23, 5),
(NULL, 4.667, 3, 5, 24, 5),
(NULL, 4.5, 4, 4, 25, 5),
(NULL, 4.2, 5, 3, 26, 5),
(NULL, 3, 1, 3, 27, 6),
(NULL, 3, 2, 3, 28, 6),
(NULL, 2.667, 3, 2, 29, 6),
(NULL, 2.5, 4, 2, 30, 6),
(NULL, 2.4, 5, 2, 31, 6),
(NULL, 1, 1, 1, 1, 7),
(NULL, 1, 2, 1, 2, 7),
(NULL, 1.333, 3, 2, 3, 7),
(NULL, 1.75, 4, 3, 4, 7),
(NULL, 2, 1, 2, 5, 8),
(NULL, 2.5, 2, 3, 6, 8),
(NULL, 2.333, 3, 2, 7, 8),
(NULL, 2.5, 4, 3, 8, 8),
(NULL, 2.6, 5, 3, 9, 8),
(NULL, 5, 1, 5, 10, 9),
(NULL, 4, 2, 3, 11, 9),
(NULL, 3.667, 3, 3, 12, 9),
(NULL, 3, 1, 3, 13, 10),
(NULL, 2.5, 2, 2, 14, 10),
(NULL, 2.333, 3, 2, 15, 10),
(NULL, 2.75, 4, 4, 16, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela carona
--

CREATE TABLE IF NOT EXISTS carona (
  idCarona integer PRIMARY KEY AUTOINCREMENT,
  Data date NOT NULL,
  Partida varchar(45) NOT NULL,
  Chegada varchar(45) NOT NULL,
  Horario time(4) NOT NULL,
  Valor float UNSIGNED NOT NULL,
  Veiculo varchar(20) NOT NULL,
  Numero_Vagas integer UNSIGNED NOT NULL,
  Repetir varchar(30) DEFAULT NULL,
  idMotorista integer UNSIGNED NOT NULL
) ;

--
-- Extraindo dados da tabela carona
--

INSERT INTO carona (idCarona, `Data`, Partida, Chegada, Horario, Valor, Veiculo, Numero_Vagas, Repetir, idMotorista) VALUES
(NULL, '2018-11-05', 'Canoas', 'Guaiba-UERGS', '07:30:00.0000', 5, 'HB20', 3, '', 1),
(NULL, '2018-11-05', 'Guaiba-UERGS', 'Canoas', '12:30:00.0000', 5, 'HB20', 3, '', 1),
(NULL, '2018-11-05', 'Canoas', 'Guaiba-UERGS', '07:30:00.0000', 5, 'ONIX', 3, '', 2),
(NULL, '2018-11-05', 'Guaiba-UERGS', 'Canoas', '17:00:00.0000', 5, 'ONIX', 3, '', 2),
(NULL, '2018-11-05', 'Porto Alegre', 'Guaiba-UERGS', '08:00:00.0000', 5, 'FOX', 3, '', 3),
(NULL, '2018-11-05', 'Guaiba-UERGS', 'Porto Alegre', '12:30:00.0000', 5, 'FOX', 3, '', 3),
(NULL, '2018-11-05', 'Porto Alegre', 'Guaiba-UERGS', '07:00:00.0000', 4.5, 'UNO', 3, '', 4),
(NULL, '2018-11-05', 'Guaiba-UERGS', 'Porto Alegre', '12:00:00.0000', 5, 'UNO', 3, '', 4),
(NULL, '2018-11-05', 'Guaiba', 'Guaiba-UERGS', '07:30:00.0000', 6, 'ELANTRA', 3, '', 5),
(NULL, '2018-11-05', 'Guaiba-UERGS', 'Guaiba', '12:30:00.0000', 6, 'ELANTRA', 3, '', 5),
(NULL, '2018-11-05', 'Guaiba', 'Guaiba-UERGS', '12:30:00.0000', 5, 'CIVIC', 3, '', 6),
(NULL, '2018-11-05', 'Guaiba-UERGS', 'Guaiba', '17:00:00.0000', 5, 'CIVIC', 3, '', 6),
(NULL, '2018-11-05', 'Porto Alegre', 'Guaiba-UERGS', '07:30:00.0000', 5, 'MEGANIUM', 3, '', 7),
(NULL, '2018-11-05', 'Guaiba-UERGS', 'Porto Alegre', '12:30:00.0000', 5, 'MEGANIUM', 3, '', 7),
(NULL, '2018-11-05', 'Guaiba', 'Guaiba-UERGS', '07:30:00.0000', 5, 'BRASILIA', 3, '', 8),
(NULL, '2018-11-05', 'Guaiba-UERGS', 'Guaiba', '12:30:00.0000', 5, 'BRASILIA', 3, '', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela locais_de_parada
--

CREATE TABLE IF NOT EXISTS locais_de_parada (
  idParada integer PRIMARY KEY AUTOINCREMENT,
  Descricao varchar(45) NOT NULL,
  idCarona integer UNSIGNED NOT NULL,
  FOREIGN KEY (idCarona) REFERENCES carona (idCarona)
) ;

--
-- Extraindo dados da tabela locais_de_parada
--

INSERT INTO locais_de_parada (idParada, Descricao, idCarona) VALUES
(NULL, 'Casa Lincoln', 1),
(NULL, 'Posto meio do caminho', 1),
(NULL, 'UERGS Guaiba', 1),
(NULL, 'UERGS Guaiba', 2),
(NULL, 'Posto meio do caminho', 2),
(NULL, 'Casa Lincoln', 2),
(NULL, 'Casa Yuri', 3),
(NULL, 'Posto 2 Meio do caminho', 3),
(NULL, 'UERGS Guaiba', 3),
(NULL, 'Casa Yuri', 4),
(NULL, 'UERGS Guaiba', 4),
(NULL, 'Centro Porto Alegre', 5),
(NULL, 'Yamaha - Dona Rafaela	', 5),
(NULL, 'UERGS Guaiba', 5),
(NULL, 'UERGS Guaiba', 6),
(NULL, 'Yamaha - Dona Rafaela', 6),
(NULL, 'Centro Porto Alegre', 6),
(NULL, 'Centro Porto Alegre', 7),
(NULL, 'Posto 2 Meio do caminho', 7),
(NULL, 'Yamaha - Dona Rafaela', 7),
(NULL, 'UERGS Guaiba', 7),
(NULL, 'UERGS Guaiba', 8),
(NULL, 'Yamaha - Dona Rafaela', 8),
(NULL, 'Posto 2 Meio do caminho', 8),
(NULL, 'Centro Porto Alegre', 8),
(NULL, 'Guaiba Centro', 9),
(NULL, 'Ulbra Guaiba', 9),
(NULL, 'UERGS Guaiba', 9),
(NULL, 'UERGS Guaiba', 10),
(NULL, 'Ulbra Guaiba', 10),
(NULL, 'Guaiba Centro', 10),
(NULL, 'Guaiba Centro', 11),
(NULL, 'Ulbra Guaiba', 11),
(NULL, 'UERGS Guaiba', 11),
(NULL, 'UERGS Guaiba', 12),
(NULL, 'Ulbra Guaiba', 12),
(NULL, 'Subway Centro Guaiba', 12),
(NULL, 'Guaiba Centro', 12),
(NULL, 'Centro Porto Alegre', 13),
(NULL, 'Rodoviaria Poa', 13),
(NULL, 'UERGS Guaiba', 13),
(NULL, 'UERGS Guaiba', 14),
(NULL, 'Rodoviaria Poa', 14),
(NULL, 'Centro Porto Alegre', 14),
(NULL, 'Guaiba Centro', 15),
(NULL, 'Ulbra Guaiba', 15),
(NULL, 'UERGS Guaiba', 15),
(NULL, 'UERGS Guaiba', 16),
(NULL, 'Ulbra Guaiba', 16),
(NULL, 'Guaiba Centro', 16);

-- --------------------------------------------------------

--
-- Estrutura da tabela motorista
--

CREATE TABLE IF NOT EXISTS motorista (
  idMotorista integer PRIMARY KEY AUTOINCREMENT,
  Nome varchar(45) NOT NULL,
  Telefone varchar(15) NOT NULL,
  Email varchar(45) NOT NULL,
  Endereco_Cidade varchar(45) NOT NULL
) ;

--
-- Extraindo dados da tabela motorista
--

INSERT INTO motorista (idMotorista, Nome, Telefone, Email, Endereco_Cidade) VALUES
(NULL, 'Lincoln Schreiber', '51983568456', 'lin-sch@gmail.com', 'Canoas'),
(NULL, 'Yuri Justen', '51983466222	', 'yur-jus@gmail.com', 'Canoas'),
(NULL, 'Giovani Severino', '51983714200	', 'gio-sev@gmail.com', 'Porto Alegre'),
(NULL, 'Gabriel Luís Nunes', '51985538998 ', 'gab-lui@gmail.com', 'Porto Alegre'),
(NULL, 'Pedro Henrique', '51992026015 ', 'ped-hen@gmail.com', 'Guaiba'),
(NULL, 'Samuel Erick', '51993369990 ', 'sam-eri@gmail.com', 'Guaiba'),
(NULL, 'Marina Patrícia', '51983744411 ', 'mar-pat@gmail.com', 'Porto Alegre'),
(NULL, 'Allana Marcela', '51988279715 ', 'all-mar@gmail.com', 'Guaiba'),
(NULL, 'Kauê Vinicius Costa', '51987960803 ', 'kau-vin@gmail.com', 'Porto Alegre'),
(NULL, 'Valentina Ana', '51991472532 ', 'val-ana@gmail.com', 'Porto Alegre');

-- --------------------------------------------------------

--
-- Estrutura da tabela passageiro
--

CREATE TABLE IF NOT EXISTS passageiro (
  idPassageiro integer PRIMARY KEY AUTOINCREMENT,
  Nome varchar(45) NOT NULL,
  Telefone varchar(15) NOT NULL,
  Email varchar(45) NOT NULL,
  Endereco_Cidade varchar(45) NOT NULL
) ;

--
-- Extraindo dados da tabela passageiro
--

INSERT INTO passageiro (idPassageiro, Nome, Telefone, Email, Endereco_Cidade) VALUES
(NULL, 'Lincoln Schreiber', '51983568456', 'lin-sch@gmail.com', 'Canoas'),
(NULL, 'Larissa Justen', '51983624622	', 'lar-jus@gmail.com', 'Porto Alegre'),
(NULL, 'Martin Severino', '51983174200	', 'mar-sev@gmail.com', 'Porto Alegre'),
(NULL, 'Thales Luís Nunes', '51983558998 ', 'tha-lui@gmail.com', 'Porto Alegre'),
(NULL, 'Pedro Henrique', '51992026015 ', 'ped-hen@gmail.com', 'Guaiba'),
(NULL, 'Guilherme Sales', '51993399690 ', 'gui-sal@gmail.com', 'Guaiba'),
(NULL, 'Alexandre Ryan', '51981770490 ', 'ale-rya@gmail.com', 'Guaiba'),
(NULL, 'Leandro Nathan ', '51988729715 ', 'lea-nat@gmail.com', 'Guaiba'),
(NULL, 'Aurora Luana', '51987608624 ', 'aur-lua@gmail.com', 'Porto Alegre'),
(NULL, 'Valentina Ana', '51991472532 ', 'val-ana@gmail.com', 'Porto Alegre'),
(NULL, 'Sophia Fernandes', '51983341320 ', 'sop-fer@gmail.com', 'Porto Alegre'),
(NULL, 'Isabelly Sara', '51991397233 ', 'isa-sar@gmail.com', 'Guaiba'),
(NULL, 'Tatiane Emanuelly', '51993790484 ', 'tat-ema@gmail.com', 'Porto Alegre'),
(NULL, 'Joana Bárbara Vieira', '51989341187 ', 'joa-bar@gmail.com', 'Porto Alegre'),
(NULL, 'Letícia Cláudia', '51982423107 ', 'let-cla@gmail.com', 'Porto Alegre'),
(NULL, 'Flávia Ester Pietra ', '51981130268 ', 'fla-est@gmail.com', 'Porto Alegre'),
(NULL, 'Rita Sebastiana', '51999469124 ', 'rit-seb@gmail.com', 'Porto Alegre'),
(NULL, 'Heloise Mirella ', '51992774466 ', 'hel-mir@gmail.com', 'Guaiba'),
(NULL, 'Lavínia Vera', '51994135148 ', 'lav-ver@gmail.com', 'Eldorado do Sul'),
(NULL, 'Bianca Nair Mariana ', '51989663663 ', 'bia-nai@gmail.com', 'Porto Alegre'),
(NULL, 'Larissa Elza da Mota', '51984269970 ', 'lar-elz@gmail.com', 'Porto Alegre'),
(NULL, 'Marina Patrícia', '51983744411 ', 'mar-pat@gmail.com', 'Porto Alegre'),
(NULL, 'Regina Amanda Vieira', '51988845188 ', 'reg-ama@gmail.com', 'Eldorado do Sul'),
(NULL, 'Sebastiana Jennifer ', '51984420334 ', 'seb-jen@gmail.com', 'Porto Alegre'),
(NULL, 'Beatriz Débora', '51985957210 ', 'bea-deb@gmail.com', 'Guaiba'),
(NULL, 'Marcela Lúcia', '51984983375 ', 'mar-luc@gmail.com', 'Porto Alegre'),
(NULL, 'Mirella Tereza', '51983873111 ', 'mir-ter@gmail.com', 'Guaiba'),
(NULL, 'Larissa Luiza Castro', '51994640465 ', 'lar-lui@gmail.com', 'Porto Alegre'),
(NULL, 'Márcia Larissa Silva', '51995966085 ', 'mar-lar@gmail.com', 'Eldorado do Sul'),
(NULL, 'Kauê Vinicius Costa', '51987960803 ', 'kau-vin@gmail.com', 'Porto Alegre'),
(NULL, 'Joaquim Francisco', '51989338498 ', 'joa-fra@gmail.com', 'Porto Alegre');

-- --------------------------------------------------------

--
-- Estrutura da tabela solicitar_carona
--

CREATE TABLE IF NOT EXISTS solicitar_carona (
  idPassageiro integer UNSIGNED NOT NULL,
  idCarona integer UNSIGNED NOT NULL,
  Local_Escolhido integer UNSIGNED NOT NULL,
  Status varchar(45)
) ;

--
-- Extraindo dados da tabela solicitar_carona
--

INSERT INTO solicitar_carona (idPassageiro, idCarona, Local_Escolhido, Status) VALUES
(2, 1, 1, 0x31),
(2, 2, 6, 0x31),
(3, 15, 46, 0x30),
(3, 16, 49, 0x30),
(4, 9, 27, 0x31),
(4, 10, 30, 0x31),
(6, 9, 27, 0x31),
(6, 10, 30, 0x31),
(7, 11, 33, 0x31),
(7, 12, 35, 0x31),
(8, 5, 13, NULL),
(8, 6, 16, NULL),
(9, 9, 27, 0x30),
(9, 10, 30, NULL),
(11, 3, 8, NULL),
(11, 4, 10, 0x30),
(12, 3, 8, NULL),
(12, 4, 10, NULL),
(13, 1, 2, NULL),
(13, 2, 5, 0x30),
(14, 11, 33, NULL),
(14, 12, 55, 0x30),
(15, 5, 13, NULL),
(15, 6, 16, NULL),
(16, 9, 27, NULL),
(16, 10, 30, 0x30),
(17, 1, 1, NULL),
(17, 2, 6, NULL),
(18, 5, 12, NULL),
(18, 6, 17, 0x30),
(19, 7, 18, NULL),
(19, 8, 24, NULL),
(20, 9, 27, 0x30),
(20, 10, 31, NULL),
(21, 15, 45, NULL),
(21, 16, 50, 0x30),
(23, 13, 39, NULL),
(23, 14, 44, 0x30),
(24, 13, 39, NULL),
(24, 14, 44, NULL),
(25, 11, 33, 0x31),
(25, 12, 55, 0x31),
(26, 3, 8, NULL),
(26, 4, 10, NULL),
(27, 1, 2, 0x31),
(27, 2, 5, 0x30),
(27, 14, 44, 0x31),
(28, 3, 8, 0x31),
(28, 4, 10, 0x31),
(29, 5, 13, NULL),
(29, 6, 16, NULL),
(31, 7, 18, 0x31),
(31, 8, 24, NULL);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela avaliacao
--

--
-- Limitadores para a tabela locais_de_parada
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
