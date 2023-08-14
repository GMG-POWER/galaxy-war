extends Node

var pontuacao := 0
var num_asteroid := 1
var nomedojogador: String
var data_dictionary = {
	"pontuacao": "",
	"nomedojogador": ""
}
func save(data_dictionary):
	var file = FileAccess.open("res://pontu/", FileAccess.WRITE)
	file.store_var(data_dictionary)
	file.close()
	

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
