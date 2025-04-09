extends Panel

onready var db = banco.db
onready var path_db = banco.path_db
var i = {}

func _ready():
	dnovo()
	
func dnovo():
	$perfil_motorista.hide()
	$label_info.text = ""
	
	var query = "SELECT idMotorista, Nome AS \"name\" FROM motorista;";
	var result = db.fetch_array(query);
	
	$selecionar_motorista.clear()
	
	$selecionar_motorista.add_item("%27s" % "Ninguem Selecionado!")
	
	for i in result:
		$selecionar_motorista.add_item("%4s - %-20s" % [str(i["idMotorista"]), str(i["name"])])
		
	$selecionar_motorista.selected = 0
	
	pass

func _on_selecionar_motorista_item_selected(ID):
	
	if(ID == 0):
		$perfil_motorista.hide()
		return
	var motorista = $selecionar_motorista.text
	var m_selected = motorista.split("-",false,1)
	
	var query = "SELECT * FROM motorista where idMotorista = " + str(m_selected[0]) + ";"
	var result = db.fetch_array(query);
	
	$perfil_motorista/idMotorista.text = str(result[0]["idMotorista"])
	$perfil_motorista/Nome.text = str(result[0]["Nome"])
	$perfil_motorista/Telefone.text = str(result[0]["Telefone"])
	$perfil_motorista/Email.text = str(result[0]["Email"])
	$perfil_motorista/Endereco_Cidade.text = str(result[0]["Endereco_Cidade"])
	
	$perfil_motorista.show()
	
	pass # replace with function body


func _on_cancel_pressed():
	dnovo()
	pass

func _on_delete_pressed():
	var id = $perfil_motorista/idMotorista.text
	var query = "DELETE FROM motorista WHERE idMotorista = %d;" % int(id)
	var result = db.query(query);
	if(result):
		dnovo()
		$label_info.text = "Usuario deletado"
	else:
		$label_info.text = "Falha em deletar"
	pass
  
func _on_save_pressed():
	var id = $perfil_motorista/idMotorista.text
	var nome = $perfil_motorista/Nome.text
	var telefone = $perfil_motorista/Telefone.text
	var email = $perfil_motorista/Email.text
	var cidade = $perfil_motorista/Endereco_Cidade.text
	
	var query = ("UPDATE motorista" +
				" SET Nome = \"%s\", Telefone = \"%s\", Email = \"%s\", Endereco_Cidade = \"%s\"" % [nome,telefone,email,cidade] +
				" WHERE idMotorista = %d;" % int(id))
	print(query)
	var result = db.query(query);
	if(result):
		dnovo()
		$label_info.text = "Usuario salvo"
	else:
		$label_info.text = "Falha em salvar"
	pass
