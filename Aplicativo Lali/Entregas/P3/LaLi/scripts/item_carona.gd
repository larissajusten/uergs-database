extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func set_data(dados,locais):
	$motorista.text = "Motorista: " + str(dados["motorista"])
	$preco.text = "Valor: " + str(dados["valor"]) + " reais"
	$carro.text = "Carro: " + str(dados["veiculo"])
	$data.text = "Dia: " + str(dados["data"])
	$Hora.text = "Hora: " + str(dados["hora"])
	$n_vagas.text = "Vagas: " + str(dados["vagas"])
	$local_partida.text = "De: " + str(dados["partida"])
	$local_chegada.text = "Para: " + str(dados["chegada"])

	for i in locais:
		$locais_parada.add_item(str(i))



	pass
