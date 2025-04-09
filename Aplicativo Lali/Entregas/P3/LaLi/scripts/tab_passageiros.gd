extends Panel

onready var db = banco.db
onready var path_db = banco.path_db
var i = {}

func _ready():
	
	$numeros.hide()
	dnovo()
	
func dnovo():
	$telefone.text = "51983568456"
	$label_info.text = ""
	$numeros.text = ""
	$perfil.hide()
	
	
	var query = "SELECT telefone AS \"tel\", Nome AS \"nome\" FROM passageiro;"
	var result = db.fetch_array(query);
	
	for i in result:
		$numeros.text += ("%-15s - %-20s\n" %[i["tel"],i["nome"]])
	
func _on_login_pressed():
	var aux = $telefone.text.split(" ",false)
	var telefone = aux[0]
	
	var query = "SELECT * FROM passageiro where Telefone like \"%" + str(telefone) + "%\";"
	var result = db.fetch_array(query);
	
	if !result:
		dnovo()
		$label_info.text = "Passageiro não encontrado!"
		$telefone.text = telefone
	elif result.size() > 1:
		$label_info.text = "Mais de um Passageiro encontrado com o mesmo numero! Somente o primeiro vai aparecer!"
		_show_login(result[0])
	else:
		$label_info.text = "Passageiro encontrado!"
		_show_login(result[0])
		
	pass # replace with function body

func _show_login(resultado):
	$perfil/id.text = str(resultado["idPassageiro"])
	$perfil/Nome.text = str(resultado["Nome"])
	$perfil/Telefone.text = str(resultado["Telefone"])
	$perfil/Email.text = str(resultado["Email"])
	$perfil/Endereco_Cidade.text = str(resultado["Endereco_Cidade"])
	
	$perfil.show()
	
	pass
	

func _on_delete_pressed():
	var id = $perfil/id.text
	var query = "DELETE FROM passageiro WHERE idPassageiro = %d;" % int(id)
	var result = db.query(query);
	if(result):
		dnovo()
		$label_info.text = "Usuario deletado"
	else:
		$label_info.text = "Falha em deletar"
	pass


func _on_cancel_pressed():
	dnovo()
	pass

func _on_save_pressed():
	var id = $perfil/id.text
	
	if id.length() == 0:
		$label_info.text = "Falha em salvar - id nulo"
		return
		
	var nome = $perfil/Nome.text

		
	if nome.length() == 0:
		$label_info.text = "Falha em salvar - nome nulo"
		return
		
	var telefone = $perfil/Telefone.text
	
	if telefone.length() == 0:
		$label_info.text = "Falha em salvar - telefone nulo"
		return
		
	var email = $perfil/Email.text
	
	if email.length() == 0:
		$label_info.text = "Falha em salvar - email nulo"
		return
		
	var cidade = $perfil/Endereco_Cidade.text
	
	if cidade.length() == 0:
		$label_info.text = "Falha em salvar - cidade nulo"
		return
	
	var query = ("UPDATE passageiro" +
				" SET Nome = \"%s\", Telefone = \"%s\", Email = \"%s\", Endereco_Cidade = \"%s\"" % [nome,telefone,email,cidade] +
				" WHERE idPassageiro = %d;" % int(id))
	print(query)
	var result = db.query(query);
	if(result):
		dnovo()
		$label_info.text = "Usuario salvo"
	else:
		$label_info.text = "Falha em salvar"
	pass


func _on_show_hide_pressed():
	$show_hide.release_focus()
	if($show_hide.pressed):
		$numeros.show()
	else:
		$numeros.hide()
	
	pass # replace with function body
