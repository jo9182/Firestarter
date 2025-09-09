extends Node

var current_scene = "world" #world cliff_side
var transition_scene = false

var player_exit_cliffside_posx = 369 
var player_exit_cliffside_posy = -37
var player_start_posx = 9 
var player_start_posy = 0  

var game_first_loadin = true

func finish_changescenes():
	if transition_scene == true:
		if current_scene == "world":
			current_scene = "cliffside"
			print("CURRENT SCENE NOW CLIFF")
		elif current_scene == "cliffside":
			current_scene = "world"
			print("CURRENT SCENE NOW WORLD")
		transition_scene = false
