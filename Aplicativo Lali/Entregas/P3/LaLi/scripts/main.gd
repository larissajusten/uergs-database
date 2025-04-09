extends Node

func _ready():
	if(!banco.is_open()):
		$FileDialog.show()
	else:
		$Tabs.show()
		pass
	pass

func _on_FileDialog_file_selected(path):
	if(abrindo_banco(path)):
		$Tabs.show()
	else:
		$FileDialog.show()
	pass


func _on_Tabs_tab_changed(tab):
	match(tab):
		0:	
			$Tabs/Cadastrar.dnovo()
		1:
			$Tabs/Passageiros.dnovo()
		2:
			$Tabs/Motoristas.dnovo()
		3:
			$"Tabs/Criar Carona".dnovo()
		4:
			$"Tabs/Visualizar Carona".dnovo()
		5:
			$Tabs/Comando.dnovo()
	pass
