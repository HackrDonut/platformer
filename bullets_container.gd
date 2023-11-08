extends HBoxContainer

@onready var bullet_gui_class = preload("res://bullets_gui.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_max_bullets(max: int):
	for i in range(max):
		var bullet = bullet_gui_class.instantiate()
		add_child(bullet)

func update_bullets(current_bullets: int):
	var bullets = get_children()
	
	for i in range(current_bullets):
		bullets[i].update(true)
	
	for i in range(current_bullets, bullets.size()):
		bullets[i].update(false)
