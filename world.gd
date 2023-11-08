extends Node2D

@onready var bullet_container = $CanvasLayer/bullets_container
@onready var player = $TileMap2D/Player

func _ready():
	bullet_container.set_max_bullets(player.max_bullets)
	bullet_container.update_bullets(player.bullets_left)
	player.bullets_changed.connect(bullet_container.update_bullets)

func _on_interact_body_entered(body):
	if body.is_in_group("Player"):
		body.die()


func _on_transition_body_entered(body):
	if body.is_in_group("Player"):
		get_tree().change_scene_to_file("res://underworld.tscn")
