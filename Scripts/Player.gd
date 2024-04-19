extends KinematicBody2D

const speed = 300

var vel = Vector2()

func get_input():
	if (not Input.is_action_pressed("ui_up")) and (not Input.is_action_pressed("ui_down")):
		vel.y = 0
		
	if Input.is_action_pressed("ui_up"):
		vel.y -= 1
	if Input.is_action_pressed("ui_down"):
		vel.y += 1
	
		
	if Input.is_action_pressed("ui_left"):
		vel.x -= 1
	if Input.is_action_pressed("ui_right"):
		vel.x += 1
	if (not Input.is_action_pressed("ui_left")) and (not Input.is_action_pressed("ui_right")):
		vel.x = 0
		
	vel = vel.normalized() * speed

func _physics_process(delta):
	get_input()
	vel = move_and_slide(vel)


