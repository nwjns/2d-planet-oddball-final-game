extends CanvasLayer

var coins_collected = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$stardustCount.text = "Stardusts: " + str(coins_collected)



func _on_stardust_1_body_entered(body: Node2D) -> void:
	coins_collected = coins_collected + 1
	$stardustCount.text = "Stardusts: " + str(coins_collected)
