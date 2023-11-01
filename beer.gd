extends CharacterBody2D

var speed = 30 
var direction = 1 
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	move_and_slide()
	velocity.y += gravity * delta
	velocity.x = speed

func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		body.become_big()
		queue_free()
	else:
			direction *= -1
