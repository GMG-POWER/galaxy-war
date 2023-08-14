extends CharacterBody2D


const SPEED = 0.01


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	velocity.y += gravity * delta * SPEED
	move_and_slide()


