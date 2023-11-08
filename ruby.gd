extends CharacterBody2D

func _physics_process(delta):
	$AnimatedSprite2D.play("default")

func _on_hitbox_body_entered(body):
	if body.is_in_group("Player"):
		Global.current_state = Global.PlayerState.RUBY
		self.queue_free()
