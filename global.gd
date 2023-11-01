extends Node

var total_coins = 0
var player_lives = 3
enum PlayerState { SMALL, BIG, FLIPFLOP }
var current_state = PlayerState.SMALL

func spawn_beer_bottle(pos):
	var BeerBottleScene = load("res://beer.tscn")
	var beer_bottle = BeerBottleScene.instantiate()
	beer_bottle.global_position = pos
	get_tree().root.add_child(beer_bottle)

func spawn_flipflop_power_up(pos):
	var FlipFlopPowerUpScene = load("res://flipflop_power_up.tscn")
	var flipflop_power_up = FlipFlopPowerUpScene.instantiate()
	flipflop_power_up.global_position = pos
	get_tree().root.add_child(flipflop_power_up)
