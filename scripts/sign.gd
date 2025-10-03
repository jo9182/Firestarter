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
		print("The Player gained a thing!")
