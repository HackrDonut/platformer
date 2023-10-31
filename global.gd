extends Node

var total_coins = 0
var player_lives = 3

func spawn_beer_bottle(pos):
	var BeerBottleScene = load("res://beer.tscn")
	var beer_bottle = BeerBottleScene.instantiate()
	beer_bottle.global_position = pos
	get_tree().root.add_child(beer_bottle)
