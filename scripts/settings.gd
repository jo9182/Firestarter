extends Control







func _on_volume_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(0, value/5)



func _on_mute_toggled(toggled_on: bool) -> void:
	pass # Replace with function body.


func _on_button_pressed() -> void:
	queue_free()
