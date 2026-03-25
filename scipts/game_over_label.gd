extends Label

func _process(delta: float) -> void:
	if GameState.is_game_over:
		visible = true
