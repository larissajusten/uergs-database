extends Panel

onready var db = banco.db
onready var path_db = banco.path_db
var i = {}

func _ready():
	dnovo()
	
func dnovo():
	
	var query = "SELECT idMotorista, Nome AS \"name\" FROM motorista;";
	var result = db.fetch_array(query);
	
	$motorista.clear()
	
	$motorista.add_item("%27s" % "Ninguem Selecionado!")
	
	for i in result:
		$motorista.add_item("%4s - %-20s" % [str(i["idMotorista"]), str(i["name"])])
		
	$motorista.selected = 0
	
	$veiculo.text = ""
	$valor.text = ""
	$vagas.text = ""
	$hora.text= ""
	$data.text = str("%s-%s-%s"%[OS.get_date()["year"],OS.get_date()["month"],OS.get_date()["day"]])
	$data.readonly = true
	$Partida.text = ""
	$Locais.text = ""
	$Chegada.text = ""
	pass

	

func _on_motorista_item_selected(ID):
	if(ID == 0):
		$motorista.hide()
		return
	var motorista = $motorista.text
	var m_selected = motorista.split("-",false,1)
	
	
	var query = "SELECT * FROM motorista where idMotorista = " + str(m_selected[0]) + ";"
	var result = db.fetch_array(query);
	

	pass # replace with function body


func _on_criar_pressed():
	if $veiculo.text.length() == 0:
		$infos.text = "Veiculo não pode ser nulo!"
		return
		$infos.text = ""
		
	if $valor.text.length() == 0:
		$infos.text = "valor não pode ser nulo!"
		return
		$infos.text = ""
	if $vagas.text.length() == 0:
		$infos.text = "vagas não pode ser nulo!"
		return
		$infos.text = ""
	if $hora.text.length() == 0:
		$infos.text = "hora não pode ser nulo!"
		return
		$infos.text = ""
		
	if $Partida.text.length() == 0:
		$infos.text = "Partida não pode ser nulo!"
		return
		$infos.text = ""
		
	var motorista = $motorista.text
	var m_selected = motorista.split("-",false,1)
	
	var query = ("INSERT INTO carona (`idCarona`, `Data`, `Partida`, `Chegada`, `Horario`, `Valor`, `Veiculo`, `Numero_Vagas`, `Repetir`, `idMotorista`) " 
			+ "VALUES (NULL, '%s', '%s', '%s', '%s',%s,'%s',%s,NULL,%s);" % [$data.text,$Partida.text,$Chegada.text,$hora.text,$valor.text,$veiculo.text,$vagas.text,str(m_selected[0])])
	
	print(query)
	
	var result = db.query(query);
	if(result):
		$infos.text = "Usuario salvo"
		dnovo()
	else:
		$infos.text = "Falha em salvar"
	
	
	pass # replace with function body


func _on_cancelar_pressed():
	dnovo()
	pass # replace with function body
