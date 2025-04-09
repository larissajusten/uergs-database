-- AVALIAÇÕES POR MOTORISTA E PASSAGEIRO
	CREATE VIEW view_avaliacoes AS
	SELECT motorista.Nome AS 'Nome Do Motorista', avaliacao.Nota_Passageiro AS 'Nota recebida', passageiro.Nome AS 'Avaliador'
	FROM avaliacao 
	INNER JOIN passageiro ON (passageiro.idPassageiro = avaliacao.idPassageiro) 
	INNER JOIN motorista ON (motorista.idMotorista = avaliacao.IdMotorista)

-- Motoristas de HB20
	CREATE VIEW motoristas_com_hb20 AS
	SELECT motorista.Nome AS 'NOME MOTORISTA', carona.Veiculo AS 'CARRITO', passageiro.Nome AS 'PASSAGEIRO'
	FROM carona
	INNER JOIN motorista ON (motorista.idMotorista = carona.idMotorista)
	INNER JOIN solicitar_carona ON (carona.idCarona = solicitar_carona.idCarona)
	INNER JOIN passageiro ON (solicitar_carona.idPassageiro = passageiro.idPassageiro)
	WHERE carona.Veiculo LIKE 'Hb20'

--CARONAS COM VALOR 5
	CREATE VIEW view_valor5 AS
	SELECT passageiro.Nome AS "NOME PASSAGEIRO", carona.Valor AS "VALOR", motorista.Nome AS "NOME MOTORISTA"
	FROM carona
	INNER JOIN motorista ON (motorista.idMotorista = carona.idMotorista)
	INNER JOIN solicitar_carona ON (carona.idCarona = solicitar_carona.idCarona)
	INNER JOIN passageiro ON (solicitar_carona.idPassageiro = passageiro.idPassageiro)
	WHERE carona.Valor LIKE '5'

--
	CREATE VIEW info_caronas AS
	SELECT carona.idCarona AS "Id", motorista.Nome AS "motorista", carona.Data AS "data", carona.Horario AS "hora", 
	carona.Valor AS "valor", carona.Numero_Vagas AS "vagas", carona.Veiculo AS "veiculo", carona.Partida AS "partida", 
	carona.Chegada AS "chegada", locais_de_parada.Descricao AS "locais"
	FROM carona
	INNER JOIN motorista ON motorista.idMotorista = carona.idMotorista
	LEFT JOIN locais_de_parada ON locais_de_parada.idCarona = carona.idCarona
	WHERE carona.data > date('now', '-1 days');

--test
	CREATE VIEW view_caronasPOA AS
	SELECT passageiro.Nome AS "NOME PASSAGEIRO", carona.Partida AS "LOCAL DE PARTIDA"
	FROM solicitar_carona
	INNER JOIN carona on (carona.idCarona = solicitar_carona.idCarona)
	INNER JOIN passageiro on (solicitar_carona.idPassageiro = passageiro.idPassageiro)
	WHERE carona.Partida LIKE 'Porto Alegre'
