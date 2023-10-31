extends Area2D

enum State { UNBUMPED, BUMPED }
var state: int = State.UNBUMPED
var original_position: Vector2

func _ready():
	original_position = position

# Signal handler for body_entered
func _on_body_entered(body):
	if body.is_in_group("Player") and state == State.UNBUMPED:
		bump_block()

# Logic for bumping the block
func bump_block():
	state = State.BUMPED
	$Sprite2D.frame = 1 # Switch to the second frame to indicate "used" state
	Global.spawn_beer_bottle(self.global_position + Vector2(0, -20))
	bump_upwards()
	var timer = get_tree().create_timer(0,2)
	await timer.timeout
	return_to_original_position()

# Function to move the block upwards
func bump_upwards():
	position.y -= 10 # Move upwards by 10 units

# Functin to return the block to its original position
func return_to_original_position():
	position = original_position
