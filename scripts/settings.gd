extends Control



func _ready():
	$CanvasLayer/Button.grab_focus()



func _on_button_pressed() -> void:
	queue_free()





func _on_collect_pressed() -> void:
	#Give wet rocks to inventory
	pass
