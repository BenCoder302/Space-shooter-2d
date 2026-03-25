extends Label

func _process(delta: float) -> void:
	text = "Score: " + str(GameState.score)
