extends Control
@onready var settingsMenu = preload("res://scenes/settings.tscn")

func _ready():
	$AnimationPlayer.play("RESET")
	$PanelContainer/VBoxContainer/Resume.grab_focus()

func _process(delta):
	esc()

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	
func pause():
	get_tree().paused = true
	$AnimationPlayer.play("blur")

func esc():
	if Input.is_action_just_pressed("esc") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("esc") and get_tree().paused == true:
		resume()


func _on_resume_pressed() -> void:
	resume()
	

func _on_restart_pressed() -> void:
	resume()
	get_tree().reload_current_scene()



func _on_quit_pressed() -> void:
	get_tree().quit()
	


#func _on_settings_pressed() -> void:
#	$AnimationPlayer.play("settings")
	
