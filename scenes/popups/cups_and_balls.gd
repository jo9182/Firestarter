extends Node2D
@onready var bush_1: Sprite2D = $bush1
@onready var bush_2: Sprite2D = $bush2
@onready var bush_3: Sprite2D = $bush3
@warning_ignore("shadowed_global_identifier")
@onready var log: Sprite2D = $log
@onready var _1_stpos: Marker2D = $"1stpos"
@onready var _2_ndpos: Marker2D = $"2ndpos"
@onready var _3_rdpos: Marker2D = $"3rdpos"
@onready var _1_sthide: Marker2D = $"1sthide"
@onready var _2_ndhide: Marker2D = $"2ndhide"
@onready var _3_rdhide: Marker2D = $"3rdhide"
@onready var mover_1: Marker2D = $Mover1
@onready var mover_2: Marker2D = $Mover2
@onready var safestart: Marker2D = $safestart
@onready var safeend: Marker2D = $safeend
@onready var safestart_2: Marker2D = $safestart2
@onready var safeend_2: Marker2D = $safeend2
@onready var safestart_3: Marker2D = $safestart3
@onready var safeend_3: Marker2D = $safeend3
@onready var safestarttop: Marker2D = $safestarttop
@onready var safeendtop: Marker2D = $safeendtop
@onready var safestartop_2: Marker2D = $safestartop2
@onready var safeendtop_2: Marker2D = $safeendtop2
@onready var safestartop_3: Marker2D = $safestartop3
@onready var safeendtop_3: Marker2D = $safeendtop3
@onready var failure: Label = $Failure
@onready var victory: Label = $Victory
@onready var instructions: Label = $instructions

var chosenOne : Sprite2D
var chosenTwo : int

func _ready():
	placer()
	await get_tree().create_timer(3.0).timeout
	randomizer(chosenOne)
	pass
	
func _process(_delta: float) -> void:
	await get_tree().create_timer(8.0).timeout
	instructions.visible = true
	if chosenTwo == 0:
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_2.position.x and get_local_mouse_position().x <= safeend_2.position.x:
				if get_local_mouse_position().y >= safestartop_2.position.y and get_local_mouse_position().y <= safeendtop_2.position.y:
					bush_1.queue_free()
					victory.visible = true
					get_tree().paused = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_3.position.x and get_local_mouse_position().x <= safeend_3.position.x:
				if get_local_mouse_position().y >= safestartop_3.position.y and get_local_mouse_position().y <= safeendtop_3.position.y:
					bush_3.queue_free()
					failure.visible = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart.position.x and get_local_mouse_position().x <= safeend.position.x:
				if get_local_mouse_position().y >= safestarttop.position.y and get_local_mouse_position().y <= safeendtop.position.y:
					bush_2.queue_free()	
					failure.visible = true
	elif chosenTwo == 1:
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_3.position.x and get_local_mouse_position().x <= safeend_3.position.x:
				if get_local_mouse_position().y >= safestartop_3.position.y and get_local_mouse_position().y <= safeendtop_3.position.y:
					bush_1.queue_free()
					victory.visible = true
					get_tree().paused = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_2.position.x and get_local_mouse_position().x <= safeend_2.position.x:
				if get_local_mouse_position().y >= safestartop_2.position.y and get_local_mouse_position().y <= safeendtop_2.position.y:
					bush_2.queue_free()
					failure.visible = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart.position.x and get_local_mouse_position().x <= safeend.position.x:
				if get_local_mouse_position().y >= safestarttop.position.y and get_local_mouse_position().y <= safeendtop.position.y:
					bush_3.queue_free()	
					failure.visible = true
	elif chosenTwo == 2:
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart.position.x and get_local_mouse_position().x <= safeend.position.x:
				if get_local_mouse_position().y >= safestarttop.position.y and get_local_mouse_position().y <= safeendtop.position.y:
					bush_1.queue_free()
					victory.visible = true
					get_tree().paused = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_2.position.x and get_local_mouse_position().x <= safeend_2.position.x:
				if get_local_mouse_position().y >= safestartop_2.position.y and get_local_mouse_position().y <= safeendtop_2.position.y:
					bush_3.queue_free()
					failure.visible = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_3.position.x and get_local_mouse_position().x <= safeend_3.position.x:
				if get_local_mouse_position().y >= safestartop_3.position.y and get_local_mouse_position().y <= safeendtop_3.position.y:
					bush_2.queue_free()	
					failure.visible = true
	elif chosenTwo == 3:
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart.position.x and get_local_mouse_position().x <= safeend.position.x:
				if get_local_mouse_position().y >= safestarttop.position.y and get_local_mouse_position().y <= safeendtop.position.y:
					bush_2.queue_free()
					victory.visible = true
					get_tree().paused = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_2.position.x and get_local_mouse_position().x <= safeend_2.position.x:
				if get_local_mouse_position().y >= safestartop_2.position.y and get_local_mouse_position().y <= safeendtop_2.position.y:
					bush_1.queue_free()
					failure.visible = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_3.position.x and get_local_mouse_position().x <= safeend_3.position.x:
				if get_local_mouse_position().y >= safestartop_3.position.y and get_local_mouse_position().y <= safeendtop_3.position.y:
					bush_3.queue_free()	
					failure.visible = true
	elif chosenTwo == 4:
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_2.position.x and get_local_mouse_position().x <= safeend_2.position.x:
				if get_local_mouse_position().y >= safestartop_2.position.y and get_local_mouse_position().y <= safeendtop_2.position.y:
					bush_2.queue_free()
					victory.visible = true
					get_tree().paused = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_3.position.x and get_local_mouse_position().x <= safeend_3.position.x:
				if get_local_mouse_position().y >= safestartop_3.position.y and get_local_mouse_position().y <= safeendtop_3.position.y:
					bush_1.queue_free()
					failure.visible = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart.position.x and get_local_mouse_position().x <= safeend.position.x:
				if get_local_mouse_position().y >= safestarttop.position.y and get_local_mouse_position().y <= safeendtop.position.y:
					bush_3.queue_free()	
					failure.visible = true
	elif chosenTwo == 5:
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_3.position.x and get_local_mouse_position().x <= safeend_3.position.x:
				if get_local_mouse_position().y >= safestartop_3.position.y and get_local_mouse_position().y <= safeendtop_3.position.y:
					bush_2.queue_free()
					victory.visible = true
					get_tree().paused = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_2.position.x and get_local_mouse_position().x <= safeend_2.position.x:
				if get_local_mouse_position().y >= safestartop_2.position.y and get_local_mouse_position().y <= safeendtop_2.position.y:
					bush_3.queue_free()
					failure.visible = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart.position.x and get_local_mouse_position().x <= safeend.position.x:
				if get_local_mouse_position().y >= safestarttop.position.y and get_local_mouse_position().y <= safeendtop.position.y:
					bush_1.queue_free()	
					failure.visible = true
	elif chosenTwo == 6:
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_3.position.x and get_local_mouse_position().x <= safeend_3.position.x:
				if get_local_mouse_position().y >= safestartop_3.position.y and get_local_mouse_position().y <= safeendtop_3.position.y:
					bush_3.queue_free()
					victory.visible = true	
					get_tree().paused = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_2.position.x and get_local_mouse_position().x <= safeend_2.position.x:
				if get_local_mouse_position().y >= safestartop_2.position.y and get_local_mouse_position().y <= safeendtop_2.position.y:
					bush_1.queue_free()
					failure.visible = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart.position.x and get_local_mouse_position().x <= safeend.position.x:
				if get_local_mouse_position().y >= safestarttop.position.y and get_local_mouse_position().y <= safeendtop.position.y:
					bush_2.queue_free()		
					failure.visible = true
	elif chosenTwo == 7:
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart.position.x and get_local_mouse_position().x <= safeend.position.x:
				if get_local_mouse_position().y >= safestarttop.position.y and get_local_mouse_position().y <= safeendtop.position.y:
					bush_3.queue_free()
					victory.visible = true
					get_tree().paused = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_2.position.x and get_local_mouse_position().x <= safeend_2.position.x:
				if get_local_mouse_position().y >= safestartop_2.position.y and get_local_mouse_position().y <= safeendtop_2.position.y:
					bush_2.queue_free()
					failure.visible = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_3.position.x and get_local_mouse_position().x <= safeend_3.position.x:
				if get_local_mouse_position().y >= safestartop_3.position.y and get_local_mouse_position().y <= safeendtop_3.position.y:	
					bush_1.queue_free()		
					failure.visible = true
	elif chosenTwo == 8:
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_2.position.x and get_local_mouse_position().x <= safeend_2.position.x:
				if get_local_mouse_position().y >= safestartop_2.position.y and get_local_mouse_position().y <= safeendtop_2.position.y:
					bush_3.queue_free()
					victory.visible = true
					get_tree().paused = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart_3.position.x and get_local_mouse_position().x <= safeend_3.position.x:
				if get_local_mouse_position().y >= safestartop_3.position.y and get_local_mouse_position().y <= safeendtop_3.position.y:
					bush_2.queue_free()
					failure.visible = true
		if Input.is_action_just_pressed("clicker"):
			if get_local_mouse_position().x >= safestart.position.x and get_local_mouse_position().x <= safeend.position.x:
				if get_local_mouse_position().y >= safestarttop.position.y and get_local_mouse_position().y <= safeendtop.position.y:
					bush_1.queue_free()	
					failure.visible = true


func randomizer(cO : Sprite2D) -> void:
	var rand : int = randi_range(0,2)
	if cO == bush_1:
		if rand == 0:
			bush_1.global_position = mover_1.global_position
			log.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _2_ndhide.global_position
			log.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _1_sthide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_2.global_position
			log.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _3_rdhide.global_position
			log.global_position = _3_rdhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _2_ndhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _1_sthide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_1.global_position
			log.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _1_sthide.global_position
			log.global_position = _1_sthide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _3_rdhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_1.global_position
			log.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _2_ndhide.global_position
			log.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _1_sthide.global_position
			chosenTwo = 0
						
		elif rand == 1:
			bush_2.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_2.global_position
			log.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _1_sthide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _2_ndhide.global_position
			log.global_position = _2_ndhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_2.global_position
			log.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _3_rdhide.global_position
			log.global_position = _3_rdhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _2_ndhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_1.global_position
			log.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _1_sthide.global_position
			log.global_position = _1_sthide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _3_rdhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _3_rdhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_2.global_position
			log.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _3_rdhide.global_position
			log.global_position = _3_rdhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _1_sthide.global_position
			chosenTwo = 1
		else:
			bush_1.global_position = mover_1.global_position
			log.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _2_ndhide.global_position
			log.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _1_sthide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_2.global_position
			log.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _3_rdhide.global_position
			log.global_position = _3_rdhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _2_ndhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _1_sthide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_1.global_position
			log.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _1_sthide.global_position
			log.global_position = _1_sthide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _3_rdhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _3_rdhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _2_ndhide.global_position
			chosenTwo = 2
	elif cO == bush_2:
		if rand == 0:
			bush_1.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_2.global_position
			log.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _1_sthide.global_position
			log.global_position = _1_sthide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _3_rdhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _2_ndhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_1.global_position
			log.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _2_ndhide.global_position
			log.global_position= _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _1_sthide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _1_sthide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _3_rdhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_2.global_position
			log.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _1_sthide.global_position
			log.global_position = _1_sthide.global_position
			chosenTwo = 3
		elif rand == 1:
			bush_2.global_position = mover_1.global_position
			log.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _1_sthide.global_position
			log.global_position = _1_sthide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _2_ndhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _3_rdhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _2_ndhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_2.global_position
			log.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _1_sthide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _3_rdhide.global_position
			log.global_position = _3_rdhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_1.global_position
			log.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _2_ndhide.global_position
			log.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _3_rdhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _3_rdhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _1_sthide.global_position
			chosenTwo = 4
		else:
			bush_1.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_2.global_position
			log.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _1_sthide.global_position
			log.global_position = _1_sthide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _3_rdhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _2_ndhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_1.global_position
			log.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _2_ndhide.global_position
			log.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _1_sthide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _1_sthide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _3_rdhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_1.global_position
			log.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _3_rdhide.global_position
			log.global_position = _3_rdhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _2_ndhide.global_position
			chosenTwo = 5
	else:
		if rand == 0:
			bush_1.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _1_sthide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_1.global_position
			log.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _3_rdhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _2_ndhide.global_position
			log.global_position = _2_ndhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			log.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _1_sthide.global_position
			log.global_position = _1_sthide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			log.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _1_sthide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _3_rdhide.global_position
			log.global_position = _3_rdhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _1_sthide.global_position
			chosenTwo = 6
		elif rand == 1:
			bush_2.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _1_sthide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _2_ndhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_1.global_position
			log.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _3_rdhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _2_ndhide.global_position
			log.global_position = _2_ndhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _1_sthide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _3_rdhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			log.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _3_rdhide.global_position
			log.global_position = _3_rdhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_1.global_position
			log.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _3_rdhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _1_sthide.global_position
			log.global_position = _1_sthide.global_position
			chosenTwo = 7
		else:
			bush_1.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _1_sthide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_1.global_position
			log.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _3_rdhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _2_ndhide.global_position
			log.global_position = _2_ndhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			log.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _2_ndhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _1_sthide.global_position
			log.global_position = _1_sthide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			log.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_1.global_position = _1_sthide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _3_rdhide.global_position
			log.global_position = _3_rdhide.global_position
			
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = mover_1.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = mover_2.global_position
			log.global_position = mover_2.global_position
			await get_tree().create_timer(0.2).timeout
			bush_2.global_position = _3_rdhide.global_position
			await get_tree().create_timer(0.2).timeout
			bush_3.global_position = _2_ndhide.global_position
			log.global_position = _2_ndhide.global_position
			chosenTwo = 8
	print(cO.name)
	pass

func placer() -> void:
	var rand : int = randi_range(0,2)
	if rand == 0:
		chosenOne = bush_1
		log.global_position = _1_stpos.global_position
		await get_tree().create_timer(2.0).timeout
		log.global_position = _1_sthide.global_position
	elif rand == 1:
		chosenOne = bush_2
		log.global_position = _2_ndpos.global_position
		await get_tree().create_timer(2.0).timeout
		log.global_position = _2_ndhide.global_position
	else:
		chosenOne = bush_3
		log.global_position = _3_rdpos.global_position
		await get_tree().create_timer(2.0).timeout
		log.global_position = _3_rdhide.global_position
