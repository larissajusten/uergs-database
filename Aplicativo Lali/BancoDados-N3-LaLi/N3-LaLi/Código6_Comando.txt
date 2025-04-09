extends Panel

onready var db = banco.db
onready var path_db = banco.path_db
var i = {}

func _ready():
	dnovo()
	pass

func dnovo():
	$table_names.clear()
	if (banco.is_open()):
		var query = "SELECT name AS \"name\", type AS \"tipo\"FROM sqlite_master WHERE (type='table' or type='view');";
		var result = db.fetch_array(query);
	
		for i in result:
			if (i["tipo"] == "view"):
				$table_names.add_item(i["name"] + "(view)")
			else:
				$table_names.add_item(i["name"])
	
		_show_keys($table_names.text,$text_collumns)
	else:
		print("Banco de dados Não Encontrado, certifique que o arquivo " + str(path_db) + " existe!")
		$text_resposta.text = "Banco de dados Não Encontrado, certifique que o arquivo " + str(path_db) + " existe!"
	pass
	
func _on_request_button_pressed():

	var query = $text_query.text
	var result = {}
	if (banco.is_open()):
		result = db.fetch_array(query);
		if (!result || result.size() <= 0):
			$text_resposta.text = str("Comando Invalido ou Resultado Nulo")
			return
		var firstrow = true
		var resposta = ""
		for row in result:
			if(firstrow):
				for keys in row.keys():
					resposta += "%17s|" % str(keys)
				resposta += "\n"
				firstrow = false;
			for values in row.values() :
				resposta += "%17s|" % str(values)
			resposta += "\n"
	
		$text_resposta.text = str(resposta)
	else:
		print("Banco de dados Não Encontrado, certifique que o arquivo " + str(path_db) + " existe!")
		$text_resposta.text = "Banco de dados Não Encontrado, certifique que o arquivo " + str(path_db) + " existe!"
	pass


func _on_do_button_pressed():
	var resposta = ""
	
	if (banco.is_open()):
		var result = db.query($text_query.text);
		
		if (!result):
			resposta = str("Comando Invalido ou Resultado Nulo")
		else:
			pass
			
	else:	
		print("Banco de dados Não Encontrado, certifique que o arquivo " + str(path_db) + " existe!")
		resposta = "Banco de dados Não Encontrado, certifique que o arquivo " + str(path_db) + " existe!"
		pass
		
	$text_resposta.text = str(resposta)
	pass



func _on_text_resposta_focus_entered():
	OS.clipboard = $text_resposta.text
	$text_resposta.release_focus()
	pass


func _on_select_pressed():
	$text_query.text = "SELECT * FROM table_name WHERE row_condition;"
	pass


func _on_update_pressed():
	$text_query.text = "UPDATE table_name SET collumn_name = value WHERE row_condition;"
	pass

func _show_keys(tabela,local_to_show):
	var query = "SELECT * FROM " + str(tabela);
	var result = db.fetch_array(query);

	if (!result || result.size() <= 0):
		local_to_show.text = str("Sem colunas")
		return

	var resposta = ""

	for row in result:
		for keys in row.keys():
			resposta += str(keys)
			resposta += "\n"
		break
	local_to_show.text = str(resposta)
	pass



func _on_table_names_item_selected(ID):
	var aux = $table_names.text.split("(",true,1)
	var nome = aux[0]
	
	_show_keys(nome,$text_collumns)
	pass


func _on_text_collumns_focus_entered():
	OS.clipboard = $text_collumns.get_selection_text()
	$text_collumns.release_focus()
	pass
