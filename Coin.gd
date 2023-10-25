extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var is_collected = false
func _on_interaction_body_entered(body):
	if body.is_in_group("Player") and not is_collected:
		is_collected = true
		$interaction/AudioStreamPlayer2D.play()
		hide()
