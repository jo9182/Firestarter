extends Node2D

@onready var image: Sprite2D = $Image
@onready var safestart: Marker2D = $safestart
@onready var safetop: Marker2D = $safetop
@onready var safeend: Marker2D = $safeend
@onready var safebottom: Marker2D = $safebottom
@onready var fire_image: Sprite2D = $fire_image

@onready var image_box: Area2D = $Image/image_box
@onready var image_body: CollisionShape2D = $Image/image_box/image_body
@onready var start: Marker2D = $start
var count : int = 0

func _ready() -> void:
	image.texture = load("res://sprites/objects/Rocks-removebg-preview.png")
	
func _process(delta: float) -> void:
		if Input.is_action_pressed("clicker"):
			image.global_position = get_local_mouse_position()
			if image.position.x >= safestart.position.x and image.position.x <= safeend.position.x:
				if image.position.y >= safetop.position.y and image.position.y <= safebottom.position.y:
					if count == 0:
						await get_tree().create_timer(.5).timeout
						image.texture = load("res://sprites/objects/tinder-removebg-preview.png")
						image.global_position = start.global_position
						count = 1
						print("Entered")
					elif count == 1:
						await get_tree().create_timer(.5).timeout
						image.texture = load("res://sprites/objects/lighter.png")
						image.global_position = start.global_position
						print("Entered")
						count = 2
					elif count == 2:
						await get_tree().create_timer(.5).timeout
						image.texture = load("res://sprites/objects/sticks-removebg-preview.png")
						image.global_position = start.global_position
						count = 3
						print("Entered")
					elif count == 3:
						await get_tree().create_timer(.5).timeout
						image.texture = load("res://scenes/popups/woods game/log.png")
						image.global_position = start.global_position
						print("Entered")
						count = 4
					else:
						image.visible = false
						fire_image.visible = true
						await get_tree().create_timer(2.5).timeout
						get_tree().change_scene_to_file("res://scenes/world.tscn")
