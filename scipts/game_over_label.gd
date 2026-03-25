extends Label

func _process(delta: float) -> void:
	if GameState.is_game_over:
		visible = true
	
	if Input.is_action_pressed("ui_accept") and GameState.is_game_over:
		get_tree().reload_current_scene()
		GameState.reset_values()
