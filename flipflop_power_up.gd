extends Area2D

func _on_body_entered(body):
	if body.is_in_group("Player"):
		Global.current_state = Global.PlayerState.FLIPFLOP
		self.queue_free()
