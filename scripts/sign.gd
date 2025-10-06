class_name Sign extends Node2D

@onready var interactable: Area2D = $interactable
@onready var sprite_2d: Sprite2D = $Sprite2D



func _ready():
	interactable.interact = _on_interact
	
	
	pass
func _on_interact():
	if sprite_2d.frame == 0:
		sprite_2d.frame = 1
		interactable.is_interactable = false
		print("The Player gained 6-7 things!")
		
	if global.currentScene(get_tree().get_current_scene().get_name()) == "River":
		print("67676767")
	elif global.currentScene(get_tree().get_current_scene().get_name()) == "world":
		print("CAMP")
	else:
		print("WHY DO I TRY")
	
