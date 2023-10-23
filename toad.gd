extends CharacterBody2D

const SPEED = 25.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var is_alive = true
@onready var animated_sprite_2d = $AnimatedSprite2D

func _ready():
	add_to_group("Enemy")


func _physics_process(delta):
	# Add the gravity.
	velocity.y += gravity * delta

	velocity.x = -SPEED
	update_animation()
	move_and_slide()

func update_animation():
	animated_sprite_2d.play("hop")


func _on_hitbox_body_entered(body):
	if body.is_in_group("Player"):
		is_alive = false
		queue_free()
