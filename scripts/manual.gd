extends Control
@onready var canvas_layer: CanvasLayer = $CanvasLayer
@onready var color_rect: ColorRect = $CanvasLayer/ColorRect
@onready var v_box_container: VBoxContainer = $CanvasLayer/VBoxContainer
@onready var pg_number: Label = $"CanvasLayer/VBoxContainer/Pg Number"
@onready var description: Label = $CanvasLayer/VBoxContainer/Description
@onready var image: Sprite2D = $CanvasLayer/VBoxContainer/Image
@onready var left: TextureButton = $CanvasLayer/left
@onready var right: TextureButton = $CanvasLayer/right

var pos : int = 1

func _ready() -> void:
	left.visible = false
	



func _on_right_pressed() -> void:
	if pos == 1:
		pos = 2
		description.text = str("The logs go next, and for a traditional teepee fire, you prop the logs up against each other to make a cone shape.")
		pg_number.text = str("page 2")
		image.texture = load("res://scenes/popups/woods game/log.png")
		left.visible = true
		return
	elif pos == 2:
		pos = 3
		description.text = str("The tinder goes on third so that the fire has fuel to burn")
		pg_number.text = str("page 3")
		image.texture = load("res://sprites/objects/sticks-removebg-preview.png")
	elif pos == 3:
		pos = 4
		description.text = str("The kindling will go on second after the dry rocks so that the fire can catch")
		pg_number.text = str("page 4")
		image.texture = load("res://sprites/objects/tinder-removebg-preview.png")
		return
	elif pos == 4:
		pos = 5
		description.text = str("Never build a fire with wet rocks as the water will expand in the rocks and they will explode")
		pg_number.text = str("page 5")
		image.texture = load("res://sprites/objects/Rocks-removebg-preview.png")
		image.modulate = Color.DIM_GRAY
		return
	elif pos == 5:
		pos = 6
		description.text = str("There are lots of signs by the lake that can give you more helpful tips you can interact with all signs by pressing 'Z' ")
		pg_number.text = str("page 6")
		image.texture = load("res://sprites/objects/sign-removebg-preview.png")
		image.modulate = Color.WHITE
		right.visible = false
		return
	pass # Replace with function body.


func _on_left_pressed() -> void:
	if pos == 2:
		pos = 1
		description.text = str("Dry rocks are the first components needed for a campfire. They can be found to the north of your campsite. They are placed in a ring to contain the fire. Safety First!")
		pg_number.text = str("page 1")
		image.texture = load("res://sprites/objects/Rocks-removebg-preview.png")
		left.visible = false
	elif pos == 3:
		pos = 2
		description.text = str("The logs go on last in a teepee form so that the fire can burn longer with the logs supporting it")
		pg_number.text = str("page 2")
		image.texture = load("res://scenes/popups/woods game/log.png")
		return
	elif pos == 4:
		pos = 3
		description.text = str("The kindeling goes on third so that the fire has fuel to burn")
		pg_number.text = str("page 3")
		image.texture = load("res://sprites/objects/sticks-removebg-preview.png")
		return
	elif pos == 5:
		pos = 4
		description.text = str("The tinder will go on second after the dry rocks so that the fire can catch")
		pg_number.text = str("page 4")
		image.texture = load("res://sprites/objects/tinder-removebg-preview.png")
		image.modulate = Color.WHITE
		return
	elif pos == 6:
		pos = 5
		description.text = str("Never build a fire with wet rocks as the water will expand in the rocks and they will explode")
		pg_number.text = str("page 5")
		image.texture = load("res://sprites/objects/Rocks-removebg-preview.png")
		image.modulate = Color.DIM_GRAY
		right.visible = true
		return
	pass # Replace with function body.
