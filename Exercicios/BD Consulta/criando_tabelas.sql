--
-- Database: `Consulta`
-- 
CREATE TABLE turno(
	codigo_turno INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	turno VARCHAR(45) NOT NULL,
	PRIMARY KEY (codigo_turno)
	);


CREATE TABLE especialidade(
	codigo_especialidade INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	descricao VARCHAR(45) NOT NULL,
	PRIMARY KEY (codigo_especialidade)
	);


CREATE TABLE paciente(
	codigo_paciente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	nome VARCHAR(40) NOT NULL,
	sexo VARCHAR(20) NOT NULL,
	data_nasc DATE NOT NULL,
	endereco VARCHAR(50) NOT NULL,
	PRIMARY KEY (codigo_paciente)
	);


CREATE TABLE medico(
	codigo_medico INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	PRIMARY KEY (codigo_medico),
	codigo_especialidade INTEGER UNSIGNED NOT NULL, 
	codigo_turno INTEGER UNSIGNED NOT NULL,

	CONSTRAINT codigo_especialidade FOREIGN KEY (codigo_especialidade) 
    REFERENCES especialidade(codigo_especialidade),

    CONSTRAINT codigo_turno FOREIGN KEY (codigo_turno) 
    REFERENCES turno(codigo_turno)
	);


CREATE TABLE consulta(
	data date NOT NULL,
	valor FLOAT NOT NULL,
	plano VARCHAR(50) NOT NULL,

	codigo_medico INTEGER UNSIGNED NOT NULL,
	codigo_paciente INTEGER UNSIGNED NOT NULL,

	CONSTRAINT codigo_medico FOREIGN KEY (codigo_medico) 
    REFERENCES medico(codigo_medico),

    CONSTRAINT codigo_paciente FOREIGN KEY (codigo_paciente) 
    REFERENCES paciente(codigo_paciente)
	);


INSERT INTO paciente (`codigo_paciente`, `nome`, `sexo`, `data_nasc`, `endereco`) VALUES
-- 4 homens
(1, 'Lincoln Schreiber', 'Masculino', '1985-06-18','Canoas'),
(2, 'Yuri Justen', 'Masculino', '1998-06-15', 'Gravataí'),
(3, 'Gabriel Luís Nunes', 'Masculino', '1991-05-22', 'Novo Hamburgo'),
(4, 'Pedro Henrique', 'Masculino', '1968-07-08', 'Guaiba'),
-- 6 mulheres
(5, 'Bianca Nair Mariana', 'Feminino','1987-05-03','Porto Alegre'),
(6, 'Larissa Elza da Mota', 'Feminino','1978-12-11','Porto Alegre'),
(7, 'Giovana Severino', 'Feminino', '1985-04-23', 'Porto Alegre'),
(8, 'Marina Patrícia', 'Feminino', '1987-08-17','Porto Alegre'),
(9, 'Allana Marcela', 'Feminino', '1977-10-21', 'Guaiba'),
(10, 'Valentina Ana', 'Feminino', '1979-09-09', 'Porto Alegre'),
-- 6 crianças
(11, 'Mirella Tereza', 'Feminino', '2007-02-29', 'Guaiba'),
(12, 'Samuel Erick', 'Masculino', '2008-04-07', 'São Borja'),
(13, 'Joana Bárbara Vieira', 'Feminino', '2008-06-12', 'Porto Alegre'),
(14, 'Letícia Cláudia', 'Feminino', '2009-12-10', 'Porto Alegre'),
(15, 'Kauê Vinicius Costa', 'Masculino', '2012-08-19','Canoas'),
(16, 'Marcela Lúcia', 'Feminino', '2011-11-22', 'Porto Alegre');

--Dois turnos (matutino e vespertino)
INSERT INTO turno (`codigo_turno`, `turno`) VALUES
(1, 'Matutino'),
(2, 'Vespertino');

--Especialidades (Angiologista, Dermatologista, Ginecologista, Proctologista, Pediatra)
INSERT INTO especialidade (`codigo_especialidade`, `descricao`) VALUES
(1, 'Angiologista'),
(2, 'Dermatologista'),
(3, 'Proctologista'),
(4, 'Ginecologista'),
(5, 'Pediatra');

-- Cadastre os seguintes médicos: 
-- (8 médicos no turno matutino paras as seguintes especialidades: pediatria e ginecologia)
INSERT INTO medico (`codigo_medico`, `nome`, `codigo_especialidade`, `codigo_turno`) VALUES
(1,"Caleb Lang",4,1),
(2,"Hermione Herring",4,1),
(3,"Elizabeth Santiago",4,1),
(4,"Nissim Meyers",5,1),
(5,"Sawyer Mcleod",5,1),
(6,"Rashad Sanders",5,1),
(7,"Brynn Foley",4,1),
(8,"Alexa Alvarez",5,1),
-- (8 médicos para o turno vespertino que atendam às seguintes especialidades:dermato, proctologista e angiologista).
(9,"Lael Parsons",3,2),
(10,"Joshua Tanner",2,2),
(11,"Charles English",2,2),
(12,"Myra Turner",1,2),
(13,"Quentin Stanton",1,2),
(14,"Cailin Boyer",1,2),
(15,"Vladimir Randall",2,2),
(16,"Charissa Wilson",3,2),
(17,"Leroy Decker",1,2),
(18,"Leslie Gibbs",2,2);

-- Para cadastrar as consultas: 
-- (cadastre 3 consultas de mulheres com ginecologista, 
--			4 consultas de mulheres com dermatologista, 
--			2 consultas de homens com dermatologista, 
--			3 consultas de homens com proctologista, 
--			4 consultas de crianças com pediatra). 
-- Para as consultas considere os valores (100,00; 200,00 e 250,00). 
-- Para os planos de saúde considere (SUS ou particular). 

INSERT INTO consulta(`data`,`valor`,`plano`, `codigo_paciente`,`codigo_medico`) VALUES
-- 3 consultas de mulheres com ginecologista
("18/11/15",50,"UNIMED",10,1),
("18/11/13",50,"UNIMED",5,1),
("18/11/12",200,"Particular",10,3),
-- 4 consultas de mulheres com dermatologista
("18/11/14",0,"SUS",10,10),
("18/11/12",250,"Particular",6,11),
("18/11/12",0,"SUS",8,15),
("18/11/16",250,"Particular",9,18),
-- 2 consultas de homens com dermatologista 
("18/11/14",0,"SUS",1,10),
("18/11/14",250,"Particular",2,18),
-- 3 consultas de homens com proctologista 
("18/11/16",50,"UNIMED",2,9),
("18/11/12",0,"SUS",4,16),
("18/11/13",0,"SUS",3,9),
-- 4 consultas de crianças com pediatra) 
("18/11/16",0,"SUS",15,6),
("18/11/13",200,"Particular",15,4),
("18/11/13",50,"UNIMED",12,4),
("18/11/15",0,"SUS",12,5);


--2. Realize as seguintes consultas SQL abaixo. 
--   Para cada uma delas você deve imprimir a sintaxe SQL juntamente com a resposta obtida.
---/*/--/*/--/*/--/*/--/*/--/*/--/*/--/*/--/*/--/*/--/*/--/*/--/*/--/*/--/*/--/*/--/*/--/*/--/*/---

-- Liste todos os médicos que atendem no turno matutino em ordem alfabética por nome do médico.
	SELECT medico.nome AS 'Nome do Medico em ordem alfabética que trabalha de manhã'
	FROM medico 
	WHERE (medico.codigo_turno = 1) 
	ORDER BY `Nome` ASC;

-- Liste todos os médicos que são dermatologista, ordenados por nome do médico.
	SELECT medico.nome AS 'Nome do Medico' 
	FROM medico 
	INNER JOIN especialidade on especialidade.codigo_especialidade = medico.codigo_especialidade
	WHERE especialidade.descricao LIKE 'Dermato%' 
	ORDER BY `Nome`;

-- Liste todos os pacientes que se consultarão com pediatra, listados por ordem de idade decrescente.
	SELECT paciente.nome AS 'Nome do Paciente', medico.nome AS 'Nome do Medico', especialidade.descricao AS 'Especialidade', paciente.data_nasc AS 'Data de Nascimento'
	FROM consulta 
	INNER JOIN paciente ON (paciente.codigo_paciente = consulta.codigo_paciente) 
	INNER JOIN medico ON (medico.codigo_medico = consulta.codigo_medico) 
	INNER JOIN especialidade ON (especialidade.codigo_especialidade = medico.codigo_especialidade)
	WHERE especialidade.descricao LIKE 'pediatra'
	ORDER BY paciente.data_nasc;

-- Liste todas as consultas dos médicos dermatologista por ordem de data.
	SELECT medico.nome AS 'Nome do Medico', especialidade.descricao AS 'Especialidade', consulta.data AS 'Dia da Consulta'
	FROM medico 
	INNER JOIN especialidade on especialidade.codigo_especialidade = medico.codigo_especialidade
	INNER JOIN consulta on medico.codigo_medico = consulta.codigo_medico
	WHERE especialidade.descricao LIKE 'Dermato%' 
	ORDER BY consulta.data;

-- Liste todas as consultas dos proctologistas no dia de hoje, ordenadas por tipo de plano de saúde.
	SELECT paciente.nome AS 'Nome do Paciente', medico.nome AS 'Nome do Medico', especialidade.descricao AS 'Especialidade', consulta.plano AS 'Plano de Saude'
	FROM consulta 
	INNER JOIN paciente ON (paciente.codigo_paciente = consulta.codigo_paciente) 
	INNER JOIN medico ON (medico.codigo_medico = consulta.codigo_medico) 
	INNER JOIN especialidade ON (especialidade.codigo_especialidade = medico.codigo_especialidade)
    WHERE especialidade.descricao LIKE 'proctologista' and consulta.data = '2018-11-14'
	ORDER BY consulta.plano;
	
-- Liste quantas consultas foram feitas no mês de maio pelo SUS.
	SELECT COUNT(consulta.data) AS 'Numero de consultas pelo SUS no mes de novembro'
	FROM consulta WHERE (MONTH(consulta.data) = 11 and consulta.plano LIKE 'SUS')

-- Liste quantas consultas foram feitas no mês de maio Particular.
	SELECT COUNT(consulta.data) AS 'Numero de consultas pelo Particular no mes de novembro'
	FROM consulta WHERE (MONTH(consulta.data) = 11 and consulta.plano LIKE 'Particular')

-- Liste quais médicos atenderam quais pacientes e quais os valores das consultas ordenados por data da consulta.
	SELECT medico.nome AS 'Nome do Medico', paciente.nome AS 'Nome do Paciente', consulta.valor AS 'Valor da Consulta', consulta.data AS 'Dia da Consulta', SUM(consulta.valor) AS 'Soma dos Valores'
	FROM consulta 
	INNER JOIN medico on medico.codigo_medico = consulta.codigo_medico
	INNER JOIN paciente on paciente.codigo_paciente = consulta.codigo_paciente
	ORDER BY consulta.data;

-- Apresente ainda, o somatório dos valores das consultas dos médicos, quando for particular.
	SELECT medico.nome AS 'Nome do Medico', COUNT(consulta.valor) AS 'Numero de Consultas', SUM(consulta.valor) AS 'Soma dos Valores'
	FROM consulta 
	INNER JOIN medico on medico.codigo_medico = consulta.codigo_medico
    WHERE consulta.plano NOT like 'SUS'
    GROUP BY medico.codigo_medico



-- Crie uma view para essa última consulta.

