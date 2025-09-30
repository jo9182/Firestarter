extends Node2D
func _process(delta):
	change_scene()
	
func _on_to_camp_exit_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		global.transition_scene = true
		print("weenah")
		
		
func _on_to_camp_exit_body_exited(body: Node2D) -> void:
	if body.has_method("player"):
		global.transition_scene = false
	
		
func change_scene():
	if global.transition_scene == true:
		if global.current_scene == "woodland":
			print(global.transition_scene)
			global.finish_changescenes()
			get_tree().change_scene_to_file("res://scenes/world.tscn")
