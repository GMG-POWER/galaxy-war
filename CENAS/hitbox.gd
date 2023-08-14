extends Area2D



func _on_body_entered(body):
	if body.name == "laser":
		Global.pontuacao += 1
		print(Global.num_asteroid)
		owner.queue_free()
		Global.num_asteroid += 1
	elif  body.name == "Vector":
		owner.queue_free()
