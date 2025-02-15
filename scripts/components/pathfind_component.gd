extends Node2D


func getMoveDirection(target: Vector2):
	var direction = target - get_global_position()
	direction = direction.normalized()
	return direction
