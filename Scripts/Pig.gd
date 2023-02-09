extends Area2D

export (int) var PIG_SPEED = 100
var isMoving = false
var isMovingLeft = false
onready var animPlayer = $PigAnimationPlayer
onready var sprite = $Sprite

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	processMovement(delta)
	flip()
	animate()

func processMovement(delta):
	var speed = PIG_SPEED * delta
	
	isMoving = false
	
	if Input.is_action_pressed("ui_right"):
		move(speed, 0)
	if Input.is_action_pressed("ui_left"):
		move(-speed, 0)
	if Input.is_action_pressed("ui_up"):
		move(0, -speed)
	if Input.is_action_pressed("ui_down"):
		move(0, speed)

func move(dx: float, dy: float):
	isMoving = true
	isMovingLeft = dx < 0 or (isMovingLeft and dx == 0) # keep facing left if no change is needed
	
	position.x += dx
	position.y += dy
	
func flip():
	sprite.flip_h = isMovingLeft	

func animate():
	if isMoving:
		animPlayer.play("Run")
	else:
		animPlayer.play("Idle")
