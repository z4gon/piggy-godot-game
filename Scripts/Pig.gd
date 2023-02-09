extends Area2D

export (int) var PIG_SPEED = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var speed = PIG_SPEED * delta
	
	if Input.is_action_pressed("ui_right"):
		move(speed, 0)
	if Input.is_action_pressed("ui_left"):
		move(-speed, 0)
	if Input.is_action_pressed("ui_up"):
		move(0, -speed)
	if Input.is_action_pressed("ui_down"):
		move(0, speed)

func move(dx: float, dy: float):
	position.x += dx
	position.y += dy
