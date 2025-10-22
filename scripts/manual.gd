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
		description.text = str("The logs go on last in a teepee form so that the fire can burn longer with the logs supporting it")
		pg_number.text = str("page 2")
		left.visible = true
		return
	elif pos == 2:
		pos = 3
		description.text = str("The kindeling goes on third so that the fire has fuel to burn")
		pg_number.text = str("page 3")
	elif pos == 3:
		pos = 4
		description.text = str("The tinder will go on second after the dry rocks so that the fire can catch")
		pg_number.text = str("page 4")
		return
	elif pos == 4:
		pos = 5
		description.text = str("Never build a fire with wet rocks as the water will expand in the rocks and they will explode")
		pg_number.text = str("page 5")
		return
	elif pos == 5:
		pos = 6
		description.text = str("There are lots of signs by the lake that can give you more helpful tips")
		pg_number.text = str("page 6")
		right.visible = false
		return
	pass # Replace with function body.


func _on_left_pressed() -> void:
	if pos == 2:
		pos = 1
		description.text = str("Dry rocks are found to the north and are needed to be placed first in a circle to prevent fire from spreading uncontrollably")
		pg_number.text = str("page 1")
		left.visible = false
	elif pos == 3:
		pos = 2
		description.text = str("The logs go on last in a teepee form so that the fire can burn longer with the logs supporting it")
		pg_number.text = str("page 2")
		return
	elif pos == 4:
		pos = 3
		description.text = str("The kindeling goes on third so that the fire has fuel to burn")
		pg_number.text = str("page 3")
		return
	elif pos == 5:
		pos = 4
		description.text = str("The tinder will go on second after the dry rocks so that the fire can catch")
		pg_number.text = str("page 4")
		return
	elif pos == 6:
		pos = 5
		description.text = str("Never build a fire with wet rocks as the water will expand in the rocks and they will explode")
		pg_number.text = str("page 5")
		right.visible = true
		return
	pass # Replace with function body.
