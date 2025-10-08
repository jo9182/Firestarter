extends Control



func _ready():
	$CanvasLayer/Button.grab_focus()



func _on_button_pressed() -> void:
	queue_free()





func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/popups/minesweeper.tscn")
	pass
