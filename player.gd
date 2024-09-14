extends RigidBody2D

func _physics_process(delta: float):
	var sideways_force = Vector2(300,0);
	var updown_force = Vector2(0,300)
	if Input.is_action_pressed("move_right"):
		apply_force(sideways_force)
	if Input.is_action_pressed("move_left"):
		apply_force(sideways_force*-1)
	if Input.is_action_pressed("move_up"):
		apply_force(updown_force*-1)
	if Input.is_action_pressed("move_down"):
		apply_force(updown_force)
