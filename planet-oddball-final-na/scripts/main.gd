extends Control
@onready var synth = $synth

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level1.tscn")
	synth.play()


func _on_exit_pressed() -> void:
	get_tree().quit()
