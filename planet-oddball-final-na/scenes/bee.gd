extends Node2D

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
var flipped := false
var last_frame := 0


func _process(delta: float) -> void:
	var current_frame = sprite.frame

	# Detect when the animation loops back to frame 0
	if current_frame == 0 and last_frame > 0:
		flipped = !flipped
		sprite.flip_h = flipped

	last_frame = current_frame
