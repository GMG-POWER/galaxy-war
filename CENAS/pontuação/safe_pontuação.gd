extends Control


var bosta: TextEdit




func _on_continuar_pressed():
	bosta = $TextEdit
	var realname = bosta.text
	Global.data_dictionary.nomedojogador = realname
	print(Global.data_dictionary.nomedojogador)
	get_tree().change_scene_to_file("res://CENAS/jogo/jogo.tscn")
	pass # Replace with function body.



func _on_voltar_pressed():
	get_tree().change_scene_to_file("res://CENAS/modo de jogo/modo_de_jogo.tscn")
	pass # Replace with function body.
