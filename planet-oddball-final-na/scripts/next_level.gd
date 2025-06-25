extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name != "Player":
		return

	var current_scene_path = get_tree().current_scene.scene_file_path
	var current_scene_name = current_scene_path.get_file().get_basename()  # e.g., "level1"

	var next_scene_path := ""

	match current_scene_name:
		"level1":
			next_scene_path = "res://scenes/level2.tscn"
		"level2":
			next_scene_path = "res://scenes/level3.tscn"
		"level3":
			next_scene_path = "res://scenes/finish.tscn"
		_:
			push_error("Unknown level: " + current_scene_name)
			return

	get_tree().change_scene_to_file(next_scene_path)
