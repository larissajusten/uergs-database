extends Panel

onready var db = banco.db
onready var path_db = banco.path_db

func _ready():
	dnovo()

func dnovo():
	$txt_nome.text = ""
	$txt_telefone.text = ""
	$txt_email.text = ""
	$txt_cidade.text = ""
	pass

func _on_Cancelar_pressed():
	dnovo()
	pass

func _on_Salvar_pressed():
	var idPassageiro = null
	var nome = $txt_nome.text
	var telefone = $txt_telefone.text
	var email = $txt_email.text
	var cidade = $txt_cidade.text

	#test
	if($txt_nome.text.length() == 0):
		$Nome/info_nome.text = "Campo vazio"
		$Nome/info_nome.show()
		return
	$Nome/info_nome.hide()

	if($txt_telefone.text.length() == 0):
		$Telefone/info_telefone.text = "Campo vazio"
		$Telefone/info_telefone.show()
		return
	$Telefone/info_telefone.hide()

	if($txt_email.text.length() == 0):
		$Email/info_email.text = "Campo vazio"
		$Email/info_email.show()
		return
	$Email/info_email.hide()

	if($txt_cidade.text.length() == 0):
		$Cidade/info_cidade.text = "Campo vazio"
		$Cidade/info_cidade.show()
		return
	$Cidade/info_cidade.hide()

	var query = ("INSERT INTO passageiro 
(idPassageiro, Nome, Telefone, Email, Endereco_Cidade)"
				+ "VALUES (NULL, '%s', '%s', '%s', '%s');" % [nome,telefone,email,cidade])

	print(query)

	var result = db.query(query);
	if(result):
		$info.show()
		$info.text = "Usuario salvo"
		dnovo()
	else:
		$info.show()
		$info.text = "Falha em salvar"


