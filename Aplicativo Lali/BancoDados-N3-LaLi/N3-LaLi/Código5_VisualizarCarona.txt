extends Panel

onready var db = banco.db
onready var path_db = banco.path_db
var i = {}
onready var carona_item = preload("res://scenes/item_carona.tscn")

func _ready():
	#dnovo()
	pass

func dnovo():

	for child in $scroll/lista.get_children():
		child.queue_free()
	
	var query = "SELECT * FROM info_caronas;"
	var result = db.fetch_array(query);
	
	var locais = []
	var dados = {}
	for i in range( result.size()):
		if(i < result.size()-1):
			if(result[i]["Id"] == result[i+1]["Id"] ):
				dados = result[i]
				if(dados.has("locais")):
					locais.append(dados["locais"])
			else:
				dados = result[i]
				if(dados.has("locais")):
					locais.append(dados["locais"])
				add_item(dados,locais)
				locais.clear()
				dados.clear()
		else:
			dados = result[i]
			if(dados.has("locais")):
				locais.append(dados["locais"])
			add_item(dados,locais)
			return
	pass

#Função que adiciona os itens na variavel itens e na lista de passageiros
func add_item (dados,locais):
	var item = carona_item.instance()
	item.rect_min_size = Vector2(660,120)
	item.set_data(dados,locais)
	$scroll/lista.add_child(item)
