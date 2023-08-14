extends Control



func _on_jogar_pressed():
	get_tree().change_scene_to_file("res://CENAS/modo de jogo/modo_de_jogo.tscn")




func _on_potuações_pressed():
	pass # Replace with function body.




func _on_sair_pressed():
	get_tree().quit() 
