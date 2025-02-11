extends CharacterBody2D

@export var speed: float = 200.0  # Movement speed

func _physics_process(_delta):
	var direction = Vector2.ZERO  # Initialize movement direction

	# Get player input
	if Input.is_action_pressed("right"):
		direction.x += 1
	if Input.is_action_pressed("left"):
		direction.x -= 1
	if Input.is_action_pressed("down"):
		direction.y += 1
	if Input.is_action_pressed("up"):
		direction.y -= 1

	# Normalize direction to prevent diagonal speed boost
	if direction.length() > 0:
		direction = direction.normalized()

	# Apply velocity
	velocity = direction * speed
	move_and_slide()
