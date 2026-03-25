extends Node2D

func _process(delta: float) -> void:
	#print("This happens at every moment of game.")
	var mouse_pos = get_global_mouse_position()
	position.x = mouse_pos.x
	
	if position.x <= 0:
		position.x = 0
	
	if position.x >= 480:
		position.x = 480
