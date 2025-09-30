@tool
class_name level_transition extends Area2D

enum SIDE {LEFT, RIGHT, TOP, BOTTOM}

@export_file("*.tscn") var mylevel
@export var target_transition_area : String = "LevelTransition"

@export_category("Collision Area Settings")

@export_range(1,12,1, "or_greater") var size : int = 2 :
	set( _v ):
		size = _v
		_update_area()

@export var side : SIDE = SIDE.LEFT : 
	set( _v ):
		side = _v
		_update_area()

@export var snap_to_grid : bool = false : 
	set( _v ):
		_snap_to_grid()
	

@onready var collision_shape: CollisionShape2D = $CollisionShape2D


func _ready() -> void:
	_update_area()
	if Engine.is_editor_hint():
		return
		
	#monitoring = false
	body_entered.connect(_player_entered)
	_place_player()
	
	await global.level_loaded
	monitoring = true
	
	pass
	
func _player_entered(_p : Node2D) -> void:
	global.load_new_level(mylevel, target_transition_area, get_offset())
	pass
	
func _place_player() -> void:
	if name != global.target_transition:
		return
	PlayerManager.set_player_position(global_position + global.position_offset)
	pass
	
func get_offset() -> Vector2:
	var offset : Vector2 = Vector2.ZERO
	var player_pos = PlayerManager.player.global_position
	if side == SIDE.LEFT or side == SIDE.RIGHT:
		offset.y = player_pos.y-global_position.y
		offset.x = 8
		if side == SIDE.LEFT:
			offset.x *= -1
	else:
		offset.x = player_pos.x-global_position.x
		offset.y = 8
		if side == SIDE.TOP:
			offset.y *= -1
	
	return offset

func _update_area() -> void:
	var new_rect : Vector2 = Vector2(16,16)
	var new_position : Vector2 = Vector2.ZERO
	
	if side == SIDE.TOP:
		new_rect.x *= size
		new_position.y -= 8
	elif side == SIDE.BOTTOM:
		new_rect.x *= size
		new_position.y += 8
	elif side == SIDE.LEFT:
		new_rect.y *= size
		new_position.x -= 8
	elif side == SIDE.RIGHT:
		new_rect.y *= size
		new_position.x += 8
	
	

	if collision_shape == null:
		collision_shape = get_node("CollisionShape2D")
	collision_shape.shape.size = new_rect
	collision_shape.position = new_position


func _snap_to_grid() -> void:
	position.x = round(position.x / 8) * 8
	position.x = round(position.y / 8) * 8
