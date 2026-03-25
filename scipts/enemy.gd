extends Node2D

@export var speed = 200
@onready var sfx_destroy = $sfx_destroy

func _process(delta: float) -> void:
	position.y += speed * delta

func _on_area_entered(area: Area2D) -> void:
	sfx_destroy.play()
	sfx_destroy.reparent(get_tree().current_scene)
	queue_free()
	GameState.score += 10
