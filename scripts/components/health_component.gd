extends Node2D

var health : int

signal no_health

func _process(_delta):
	if health <= 0:
		no_health.emit()

func set_health(new_health):
	health = new_health

func get_health():
	return health

func change_health(health_change):
	health += health_change
	print(get_node("..").name)
	print(health)
