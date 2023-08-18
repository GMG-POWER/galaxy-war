extends Area2D


func _on_body_entered(body):
	if body.name == "Asteroid":
		print("atingiu")
		owner.queue_free()
