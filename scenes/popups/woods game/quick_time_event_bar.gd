extends Node2D

@onready var background: Sprite2D = $background
@onready var pointer: Sprite2D = $pointer
@onready var start: Marker2D = $start
@onready var end: Marker2D = $end
@onready var safestartpos: Marker2D = $safestartpos
@onready var safeendpos: Marker2D = $safeendpos

var direction = 1 # right position
var count = 0
func _process(delta: float) -> void:
	if pointer.position.x <= start.position.x:
		direction = 1
	elif pointer.position.x >= end.position.x:
		direction = -1
	
	pointer.position.x += direction
	
	if Input.is_action_pressed("ui_accept"):
		if pointer.position.x >= safestartpos.position.x and pointer.position.x <= safeendpos.position.x:
			count += 1
			is_game_over(count)
			
func is_game_over(wins : int) -> void:
	if count > 3:
		get_tree().change_scene_to_file("res://scenes/deep_woods.tscn")
	
		
