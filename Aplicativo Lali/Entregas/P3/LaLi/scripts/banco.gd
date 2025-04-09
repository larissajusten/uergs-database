extends Node

# SQLite module
const SQLite = preload("res://lib/gdsqlite.gdns");
var db
var path_db = "res://db.sqlite"

func _ready():
	db = SQLite.new()
	if (not db.open_db(path_db)):
		print("Cannot open database.");

func is_open():
	if (not db or not db.loaded()):
		print("Cannot open database.")
		return false
	else:
		return true
	pass
	
func abrindo_banco(path,file_dialog):
	if (not db.open_db(path)):
		return false
	else:
		path_db = path
		return true
	pass
