extends Node2D

func _on_death_pit_body_entered(body):
	if body.is_in_group("Player"):
		body.die()
