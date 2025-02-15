extends Area2D

func _on_area_entered(area: Area2D) -> void:
	if "damage" in area:
		get_node("../HealthComponent").change_health(area.damage)
