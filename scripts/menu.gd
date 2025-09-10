extends Control

func _ready():
	$VBoxContainer/StartButton.grab_focus()

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/world.tscn")
	

func _on_settings_button_pressed() -> void:
	var settings = load("res://scenes/settings.tscn").instantiate()
	get_tree().current_scene.add_child(settings)
	

func _on_exit_button_pressed() -> void:
	get_tree().quit()
