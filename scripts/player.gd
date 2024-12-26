extends CharacterBody2D


const SPEED = 100.0
var current_dir = "down"

func _physics_process(delta: float) -> void:
	player_movement(delta)

func player_movement(delta): 
	if Input.is_action_pressed("ui_right"):
		current_dir = "right"
		player_animation(1)
		velocity.x = SPEED
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		current_dir = "left"
		player_animation(1)
		velocity.x = -SPEED
		velocity.y = 0
	elif Input.is_action_pressed("ui_up"):
		current_dir = "up"
		player_animation(1)
		velocity.x = 0
		velocity.y = -SPEED
	elif Input.is_action_pressed("ui_down"):
		current_dir = "down"
		player_animation(1)
		velocity.x = 0
		velocity.y = SPEED
	else: 
		player_animation(0)
		velocity.x = 0
		velocity.y = 0
		
	move_and_slide()

func player_animation(inMotion): 
	var dir = current_dir
	var anim = $AnimatedSprite2D
	
	if dir == "right":
		anim.flip_h = false
		dir = "side"
	elif dir == "left":
		anim.flip_h = true
		dir = "side"

	if inMotion == 1: 
		anim.play(dir + "_walk")
	else:
		anim.play(dir + "_idle")
