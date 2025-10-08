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
		var riverpop = load("res://scenes/popups/cliffside_pop.tscn").instantiate()
		get_tree().current_scene.add_child(riverpop)
	elif global.currentScene(get_tree().get_current_scene().get_name()) == "world":
		print("CAMP")
	elif global.currentScene(get_tree().get_current_scene().get_name()) == "Woodland":
		print("wood")
	elif global.currentScene(get_tree().get_current_scene().get_name()) == "cliffside":
		var cliffsidepop = load("res://scenes/popups/cliffside_pop.tscn").instantiate()
		get_tree().current_scene.add_child(cliffsidepop)
	elif global.currentScene(get_tree().get_current_scene().get_name()) == "West":
		print("west")
	elif global.currentScene(get_tree().get_current_scene().get_name()) == "Deep Woods":
		print("HOW DEEP")
	else:
		print("WHY DO I TRY")
	
