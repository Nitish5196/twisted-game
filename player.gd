extends CharacterBody2D

const SPEED = 400.0

func _physics_process(_delta):
	# Get 2D direction (X and Y movement)
	var direction = Input.get_vector("left", "right", "up", "down")
	
	# Apply direction directly to velocity (No gravity!)
	velocity = direction * SPEED
	
	move_and_slide()
