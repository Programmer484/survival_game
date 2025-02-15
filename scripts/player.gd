extends CharacterBody2D

var speed_component : Node2D
var health_component : Node2D

func _ready() -> void:
	health_component = $HealthComponent
	speed_component = $SpeedComponent
	health_component.health = 100
	speed_component.speed = 200

func _physics_process(_delta):
	var mouse_position = get_global_mouse_position()
	var facing = (mouse_position - global_position).normalized()
	rotation = facing.angle() + PI/2

	var direction = Input.get_vector("left", "right", "up", "down")
	var vel_x = Vector2(direction.x * speed_component.speed, 0)
	var vel_y = Vector2(0, direction.y * speed_component.speed)

	move_and_collide(vel_x * _delta)
	move_and_collide(vel_y * _delta)


func _on_health_component_no_health() -> void:
	queue_free()
