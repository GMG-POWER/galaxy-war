extends CharacterBody2D
var speed = 200


func _process(delta):
	var velocity = Vector2(0, -speed * delta)
	move_and_collide(velocity)
