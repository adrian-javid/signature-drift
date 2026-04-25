extends RigidBody2D

const thrust_power := 350.0
const rotation_speed := 15.0 * 1_000

func _physics_process(_delta: float) -> void:
	var rotation_direction := Input.get_axis("ui_left", "ui_right")
	apply_torque(rotation_direction * rotation_speed)

	if Input.is_action_pressed("ui_up"):
		var direction := Vector2.UP.rotated(rotation)
		apply_central_force(direction * thrust_power)
