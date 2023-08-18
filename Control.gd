extends Control

var nome: Label



func _ready():
	nome = $VBoxContainer/HBoxContainer2/nomedojogador1
	nome.text = Global.data_dictionary.nomedojogador
	var nonome : String = nome.text
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://MENU/menu.tscn")
