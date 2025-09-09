extends Control

func _ready():
	$VBoxContainer/StartButton.grab_focus()

func _on_start_button_pressed() -> void:
	get_tree().change_scene("res://scenes/world.tscn")
	



func _on_exit_button_pressed() -> void:
	get_tree().quit()
