--
-- Database: `lali_db`
--

-- --------------------------------------------------------
-- Criamos a tabela "motorista"
-- Estrutura da tabela "motorista"
--

CREATE TABLE motorista(
	idMotorista INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	Nome VARCHAR(45) NOT NULL,
	Telefone VARCHAR(15) NOT NULL,
	Email VARCHAR(45) NOT NULL,
	Endereco_Cidade VARCHAR(45) NOT NULL,
	PRIMARY KEY (idMotorista)
	);

-- --------------------------------------------------------
-- Criamos a tabela "passageiro"
-- Estrutura da tabela "passageiro"
--

CREATE TABLE passageiro(
	idPassageiro INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	Nome VARCHAR(45) NOT NULL,
	Telefone VARCHAR(15) NOT NULL,
	Email VARCHAR(45) NOT NULL,
	Endereco_Cidade VARCHAR(45) NOT NULL,
	PRIMARY KEY (idPassageiro)
	);

-- --------------------------------------------------------
-- Criamos a tabela "carona"
-- Estrutura da tabela "carona"
--

CREATE TABLE carona(
	idCarona INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    Data DATE NOT NULL,
    Partida VARCHAR(45) NOT NULL,
    Chegada VARCHAR(45) NOT NULL,
    Horario TIME(4) NOT NULL,
    Valor FLOAT UNSIGNED NOT NULL,
    Veiculo VARCHAR(20) NOT NULL,
    Numero_Vagas INTEGER UNSIGNED NOT NULL,
    Repetir VARCHAR(30),
    idMotorista INTEGER UNSIGNED NOT NULL,
    
	PRIMARY KEY (idCarona),
    
    CONSTRAINT idMotorista FOREIGN KEY idMotorista (idMotorista) 
    REFERENCES motorista(idMotorista) 
    ON DELETE RESTRICT ON UPDATE RESTRICT
	);

-- --------------------------------------------------------
-- Criamos a tabela "locais_de_parada"
-- Estrutura da tabela "locais_de_parada"
--

CREATE TABLE locais_de_parada(
	idParada INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    Descricao VARCHAR(45) NOT NULL,
    idCarona INTEGER UNSIGNED NOT NULL,
    
    PRIMARY KEY (idParada),
    
    CONSTRAINT idCarona FOREIGN KEY idCarona (idCarona) 
    REFERENCES carona(idCarona) 
    ON DELETE RESTRICT ON UPDATE RESTRICT
    );

-- --------------------------------------------------------
-- Criamos a tabela "solicitar_carona"
-- Estrutura da tabela "solicitar_carona"
--

CREATE TABLE solicitar_carona(
	idPassageiro INTEGER UNSIGNED NOT NULL,
	idCarona INTEGER UNSIGNED NOT NULL,
	Local_Escolhido VARCHAR(45) NOT NULL,
    Status BINARY,
	
    CONSTRAINT idPassageiro_ FOREIGN KEY (idPassageiro) 
    REFERENCES passageiro(idPassageiro),
    
    CONSTRAINT idCarona_ FOREIGN KEY (idCarona) 
    REFERENCES carona(idCarona) 
	);

-- --------------------------------------------------------
-- Criamos a tabela "avaliacao"
-- Estrutura da tabela "avaliacao"
--

CREATE TABLE avaliacao(
	idAvaliacao INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	Nota FLOAT NOT NULL,
	Numero_Notas FLOAT NOT NULL,
	Nota_Passageiro FLOAT NOT NULL,
	idPassageiro INTEGER UNSIGNED NOT NULL, 
	IdMotorista INTEGER UNSIGNED NOT NULL,
    
    PRIMARY KEY (idAvaliacao),
	
    CONSTRAINT idPassageiro FOREIGN KEY (idPassageiro) 
    REFERENCES passageiro(idPassageiro),
    
    CONSTRAINT idMotorista_ FOREIGN KEY (idMotorista) 
    REFERENCES motorista(idMotorista) 
	);



-- -------------------------------------------------------
-- Populando o banco
--

-- Motorista
INSERT INTO motorista (`idMotorista`, `Nome`, `Telefone`, `Email`, `Endereco_Cidade`) VALUES
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

-- Passageiro
INSERT INTO passageiro (`idPassageiro`, `Nome`, `Telefone`, `Email`, `Endereco_Cidade`) VALUES
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

-- Carona
INSERT INTO carona (`idCarona`, `Data`, `Partida`, `Chegada`, `Horario`, `Valor`, `Veiculo`, `Numero_Vagas`, `Repetir`, `idMotorista`) 

(1, '2018-11-05', 'Canoas', 'Guaiba-UERGS', '07:30:00',5,'HB20',3,'',1),
(2, '2018-11-05', 'Guaiba-UERGS', 'Canoas', '12:30:00',5,'HB20',3,'',1),
(3, '2018-11-05', 'Canoas', 'Guaiba-UERGS', '07:30:00',5,'ONIX',3,'',2),
(4, '2018-11-05', 'Guaiba-UERGS', 'Canoas', '17:00:00',5,'ONIX',3,'',2),
(5, '2018-11-05', 'Porto Alegre', 'Guaiba-UERGS', '08:00:00',5,'FOX',3,'',3),
(6, '2018-11-05', 'Guaiba-UERGS', 'Porto Alegre', '12:30:00',5,'FOX',3,'',3),
(7, '2018-11-05', 'Porto Alegre', 'Guaiba-UERGS', '07:00:00',4.5,'UNO',3,'',4),
(8, '2018-11-05', 'Guaiba-UERGS', 'Porto Alegre', '12:00:00',5,'UNO',3,'',4),
(9, '2018-11-05', 'Guaiba', 'Guaiba-UERGS', '07:30:00',6,'ELANTRA',3,'',5),
(10, '2018-11-05', 'Guaiba-UERGS', 'Guaiba', '12:30:00',6,'ELANTRA',3,'',5),
(11, '2018-11-05', 'Guaiba', 'Guaiba-UERGS', '12:30:00',5,'CIVIC',3,'',6),
(12, '2018-11-05', 'Guaiba-UERGS', 'Guaiba', '17:00:00',5,'CIVIC',3,'',6),
(13, '2018-11-05', 'Porto Alegre', 'Guaiba-UERGS', '07:30:00',5,'MEGANIUM',3,'',7),
(14, '2018-11-05', 'Guaiba-UERGS', 'Porto Alegre', '12:30:00',5,'MEGANIUM',3,'',7),
(15, '2018-11-05', 'Guaiba', 'Guaiba-UERGS', '07:30:00',5,'BRASILIA',3,'',8),
(16, '2018-11-05', 'Guaiba-UERGS', 'Guaiba', '12:30:00',5,'BRASILIA',3,'',8);

-- locais_de_parada
INSERT INTO locais_de_parada (`idParada`, `Descricao`, `idCarona`) VALUES
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

-- solicitar_carona
INSERT INTO solicitar_carona (`idPassageiro`, `idCarona`, `Local_Escolhido`, `Status`) VALUES
(2, 1, 1, 1),
(2, 2, 6, 1),
(3, 15, 46, 0),
(3, 16, 49, 0),
(4, 9, 27, 1),
(4, 10, 30, 1),
(6, 9, 27, 1),
(6, 10, 30, 1),
(7, 11, 33, 1),
(7, 12, 35, 1),
(8, 5, 13, NULL),
(8, 6, 16, NULL),
(9, 9, 27, 0),
(9, 10, 30, NULL),
(11, 3, 8, NULL),
(11, 4, 10, 0),
(12, 3, 8, NULL),
(12, 4, 10, NULL),
(13, 1, 2, NULL),
(13, 2, 5, 0),
(14, 11, 33, NULL),
(14, 12, 55, 0),
(15, 5, 13, NULL),
(15, 6, 16, NULL),
(16, 9, 27, NULL),
(16, 10, 30, 0),
(17, 1, 1, NULL),
(17, 2, 6, NULL),
(18, 5, 12, NULL),
(18, 6, 17, 0),
(19, 7, 18, NULL),
(19, 8, 24, NULL),
(20, 9, 27, 0),
(20, 10, 31, NULL),
(21, 15, 45, NULL),
(21, 16, 50, 0),
(23, 13, 39, NULL),
(23, 14, 44, 0),
(24, 13, 39, NULL),
(24, 14, 44, NULL),
(25, 11, 33, 1),
(25, 12, 55, 1),
(26, 3, 8, NULL),
(26, 4, 10, NULL),
(27, 1, 2, 1),
(27, 2, 5, 0),
(27, 14, 44, 1),
(28, 3, 8, 1),
(28, 4, 10, 1),
(29, 5, 13, NULL),
(29, 6, 16, NULL),
(31, 7, 18, 1),
(31, 8, 24, NULL);

-- avaliacao
INSERT INTO avaliacao (`idAvaliacao`, `Nota`, `Numero_Notas`, `Nota_Passageiro`, `idPassageiro`, `IdMotorista`) VALUES
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


-- -------------------------------------------------------
-- Liste Todos os conteúdos de pelo menos duas tabelas
--

-- 1-1
SELECT * FROM motorista;
-- 1-2
SELECT * FROM passageiro;
-- 1-3
SELECT * FROM carona;

-- -------------------------------------------------------
-- Liste uma tabela em ordem alfabética
--
-- 2
SELECT * FROM motorista ORDER BY `Nome` ASC;

	-- -------------------------------------------------------
	-- Liste uma tabela ordenada por um campo date(se houver) mas fizemos com Hora também
--
-- 3
SELECT * FROM carona ORDER BY carona.Data ASC, carona.Horario ASC;

-- -------------------------------------------------------
-- Liste a quantidade de registros em uma tabela
--
-- 4-1
select count(*) AS 'numero de motoristas' from motorista;
-- 4-2
select count(*) AS 'numero de passageiros' from passageiro;
-- 4-3
select count(*) AS 'numero de avaliações' from avaliacao;

-- -------------------------------------------------------
-- Crie consultas que utilizem as seguintes funções: (fazer consultas separadamente)
-- Order by asc -- 5-1
	SELECT * FROM passageiro ORDER BY `Nome` ASC;
-- Order by desc -- 5-2
	SELECT * FROM motorista ORDER BY `Nome` DESC;
-- Min -- 5-3
	SELECT MIN(avaliacao.Nota_Passageiro) FROM avaliacao;
-- Max -- 5-4
	SELECT MAX(avaliacao.Nota), idAvaliacao FROM avaliacao WHERE avaliacao.idAvaliacao IN (SELECT max(idAvaliacao) FROM avaliacao GROUP BY avaliacao.IdMotorista);
-- Somatório -- 5-5
	SELECT SUM(avaliacao.Nota) FROM avaliacao;
-- AVG -- 5-6
	SELECT avg(Nota), IdMotorista FROM avaliacao GROUP BY avaliacao.IdMotorista;
