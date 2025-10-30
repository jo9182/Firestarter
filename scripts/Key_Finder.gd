class_name key_finder extends Node

var dubbleyou : String = "W"
var eh : String = "A"
var es : String = "S"
var dee : String = "D"
var chosen1 : String
var points : int = 0
@onready var victory: Label = $victory
@onready var wasd: Sprite2D = $wasd
@onready var timer: Timer = $Timer

var alreadytrue : bool = false

func _ready() -> void:
	choose_wasd()
	print("noodle")
		
	#if Input.action_just_pressed("rand1"):
		#if chosen1 = dubbleyou:
			
	pass
	
	
func _process(delta: float) -> void:
	if points <= 3:
		activate()
		print("Again")
		print(points)
	else:
		victory.visible = true
		await get_tree().create_timer(1).timeout
		get_tree().change_scene_to_file("res://scenes/west.tscn")
	pass
	
func choose_wasd() -> void:
	var mynum : int = randi_range(0,3)
	if mynum == 0:
		chosen1 = dubbleyou
	elif mynum == 1:
		chosen1 = eh
	elif mynum == 2:
		chosen1 = es
	else:
		chosen1 = dee
	pass
	
func activate() -> void:
	if chosen1 == "W":
		print("orphan")
		wasd.texture = load("res://sprites/objects/W_KEY-removebg-preview.png")
		print("2")
		if mytime(1.75) == true:
			print("3")
			if Input.is_action_just_pressed("rand1"):
				print("676767")
				points += 1
		else:
			choose_wasd()
			print("1515")
				
	elif chosen1 == "A":
		print("orphan")
		wasd.texture = load("res://sprites/objects/A_KEY-removebg-preview.png")
		print("2")
		if mytime(1.75) == true:
			print("3")
			if Input.is_action_just_pressed("rand2"):
				print("7676767766767")
				points += 1
		else:
			choose_wasd()
			print("1414")
				
	elif chosen1 == "S":
		print("orphan")
		wasd.texture = load("res://sprites/objects/S_KEY-removebg-preview.png")
		print("2")
		if mytime(1.75) == true:
			print("3")
			if Input.is_action_just_pressed("rand3"):
				print("S")
				points += 1
		else:
			choose_wasd()
			print("1313")
				
	elif chosen1 == "D":
		wasd.texture = load("res://sprites/objects/D_KEY-removebg-preview.png")
		if mytime(1.75) == true:
			if Input.is_action_just_pressed("rand4"):
				points += 1
		else:
			choose_wasd()
			print("1212")
				
				
func mytime(time : float) -> bool:

	return true


func _on_timer_timeout() -> void:
	choose_wasd()
	print("1313")
	pass # Replace with function body.
