extends Node2D

@export var enemy_tscn: PackedScene

func spawn_enemy_ship():
	var new_enemy = enemy_tscn.instantiate()
	add_child(new_enemy)
	
	new_enemy.position.y = 35
	var screen_width = get_viewport_rect().size.x
	var rand_x = randi_range(0 + 35, screen_width - 35)
	new_enemy.position.x = rand_x
	print(new_enemy.position)
