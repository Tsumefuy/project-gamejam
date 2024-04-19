extends KinematicBody2D

const speed = 300

var vel = Vector2()

func get_input():
	if Input.is_action_pressed("ui_up"):
		vel.y -= 1
	elif Input.is_action_pressed("ui_down"):
		vel.y += 1
	else:
		vel.y = 0
		
	if Input.is_action_pressed("ui_left"):
		vel.x -= 1
	elif Input.is_action_pressed("ui_right"):
		vel.x += 1
	else:
		vel.x = 0
		
	vel = vel.normalized() * speed

func _physics_process(delta):
	get_input()
	vel = move_and_slide(vel)


