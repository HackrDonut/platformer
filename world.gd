extends Node2D


func _on_interact_body_entered(body):
	if body.is_in_group("Player"):
		body.die()


func _on_transition_body_entered(body):
	if body.is_in_group("Player"):
		get_tree().change_scene_to_file("res://underworld.tscn")
