extends CharacterBody2D

var speed_component : Node2D
var health_component : Node2D
var damage_area_component : Node2D

func _ready():
	health_component = $HealthComponent
	speed_component = $SpeedComponent
	damage_area_component = $DamageAreaComponent
	health_component.health = 100
	speed_component.speed = 175
	damage_area_component.damage = -20

func _physics_process(delta):
	var players = get_tree().get_nodes_in_group("players")
	if len(players) > 0:
		var player = get_tree().get_nodes_in_group("players")[0]
		var direction = $PathfindComponent.getMoveDirection(player.get_global_position())
		velocity = direction * speed_component.speed
		var _collision = move_and_collide(velocity * delta)


func _on_health_component_no_health() -> void:
	queue_free()
