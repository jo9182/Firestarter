extends Control



func _ready():
	$CanvasLayer/Button.grab_focus()



func _on_button_pressed() -> void:
	queue_free()



<<<<<<< HEAD


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/popups/woods game/qte_red_and_green.tscn")
	pass
=======
func _on_collect_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/popups/qte_red_and_green.tscn")
	pass # Replace with function body.
>>>>>>> ef0754f5fc29bed4ccd21c7c424e87fcd54349d2
