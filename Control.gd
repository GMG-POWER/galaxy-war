extends Control


@onready var nomedojogador_1 = $VBoxContainer/HBoxContainer2/nomedojogador1
var score: Label


func _ready():
	var nonome : String = nomedojogador_1.text
	nomedojogador_1.text = Global.data_dictionary.nomedojogador
	score = $VBoxContainer/HBoxContainer2/score
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	score.text = str(Global.data_dictionary.pontuacao)
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://MENU/menu.tscn")
