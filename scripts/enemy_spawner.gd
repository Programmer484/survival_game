extends Node2D

var enemy_scene : PackedScene = load("res://scenes/Enemy.tscn")

func _on_timer_timeout() -> void:
		var rng := RandomNumberGenerator.new()
		var enemy = enemy_scene.instantiate()
		add_child(enemy)
		enemy.position = Vector2(rng.randi_range(50, 462), rng.randi_range(50, 462))
