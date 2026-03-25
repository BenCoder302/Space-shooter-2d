extends Node2D

@export var speed = 400

func _process(delta: float) -> void:
	position.y -= speed * delta

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemy"):
		queue_free()
