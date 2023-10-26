extends CanvasLayer

func _process(delta):
	$Label.text = "Coins: " + str(Global.total_coins)
