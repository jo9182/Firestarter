extends Node2D

@onready var image: Sprite2D = $Image
@onready var box: Area2D = $Box
@onready var drop_zone: CollisionShape2D = $Box/Drop_Zone
@onready var image_box: Area2D = $Image/image_box
@onready var image_body: CollisionShape2D = $Image/image_box/image_body
@onready var start: Marker2D = $start

func _ready() -> void:
	image.texture = load("res://sprites/objects/Rocks-removebg-preview.png")
	
func _process(delta: float) -> void:
		if Input.is_action_pressed("clicker"):
			image.global_position = get_local_mouse_position()


func _on_box_body_entered(body: Node2D) -> void:
	print("Entered")
	if Input.is_action_just_released("clicker"):
		if box.body_entered:
			image.texture = load("res://sprites/objects/tinder-removebg-preview.png")
			image.global_position = start.global_position
	pass # Replace with function body.
