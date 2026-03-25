extends Node2D

@export var laser_tscn: PackedScene

func _process(delta: float) -> void:
	#print("This happens at every moment of game.")
	var mouse_pos = get_global_mouse_position()
	position.x = mouse_pos.x
	
	if (position.x - 49) <= 0:
		position.x = 49
	
	if (position.x + 49) >= 480:
		position.x = 480 - 49
		
	if Input.is_action_just_pressed("Fire"):
		var new_laser = laser_tscn.instantiate()
		add_sibling(new_laser)
		new_laser.position = position
