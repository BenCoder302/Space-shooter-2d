extends Label

@onready var sfx_lose = $sfx_lose

func _process(delta: float) -> void:
	if GameState.is_game_over:
		visible = true
		sfx_lose.play()
	
	if Input.is_action_pressed("ui_accept") and GameState.is_game_over:
		get_tree().reload_current_scene()
		GameState.reset_values()
