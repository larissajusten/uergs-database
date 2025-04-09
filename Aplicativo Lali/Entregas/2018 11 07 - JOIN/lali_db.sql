-- -------------------------------------------------------
-- 6 QUERYS COM JOIN do nosso bd
--

-- 3 COM INNER JOIN
-- locais de parada e Carona
	SELECT carona.idCarona, carona.Data, carona.Horario, carona.Partida, carona.Chegada, 
	carona.Valor, locais_de_parada.Descricao 
	FROM carona 
	INNER JOIN locais_de_parada on carona.idCarona = locais_de_parada.idCarona;

-- passageiro e suas avaliações
	SELECT passageiro.Nome, avaliacao.Nota_Passageiro
	FROM passageiro 
	INNER JOIN avaliacao on passageiro.idPassageiro = avaliacao.idPassageiro;

-- liga passageiro, avaliação e os motoristas
	SELECT passageiro.Nome, avaliacao.Nota_Passageiro, motorista.Nome 
	FROM avaliacao 
	INNER JOIN passageiro on (passageiro.idPassageiro = avaliacao.idPassageiro) 
	INNER JOIN motorista on (motorista.idMotorista = avaliacao.IdMotorista);

-- 1 COM LEFT JOIN
	SELECT motorista.Nome, carona.Data, carona.Partida, carona.Veiculo
	FROM carona
	LEFT JOIN motorista ON motorista.idMotorista = carona.idMotorista;

-- 1 COM RIGHT JOIN
	SELECT motorista.Nome, carona.Data, carona.Partida, carona.Veiculo
	FROM carona
	RIGHT JOIN motorista ON motorista.idMotorista = carona.idMotorista;

-- 1 COM Cross Join
	SELECT motorista.Nome, carona.Data, carona.Partida, carona.Veiculo
	FROM carona
	CROSS JOIN motorista;


-- -------------------------------------------------------
-- INNER JOINS 4 TABELAS CURSO, QUAIS ALUNOS ESTÃO MATRICULADOS NO CURSO 'X' 
-- NOME ALUNO, CURSO, TURMA
--

SELECT aluno.nome, curso.descricao, turma.idTurma 
from  matricula
INNER JOIN aluno on (aluno.nroMatricula = matricula.nroMatricula)
INNER JOIN turma on (turma.idTurma = matricula.idTurma)
INNER JOIN curso on (curso.idCurso = turma.idCurso);
