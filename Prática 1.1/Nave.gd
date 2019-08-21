extends RigidBody2D

var forca_propulsao = Vector2(0, -300)
var forca_virar = 400


func _ready():
	pass


func _process(delta):
	if Input.is_action_pressed("ui_up"):
		apply_central_impulse(forca_propulsao.rotated(rotation) * delta)
	
	if Input.is_action_pressed("ui_right"):
		apply_torque_impulse(forca_virar * delta)
	
	if Input.is_action_pressed("ui_left"):
		apply_torque_impulse(-forca_virar * delta)
	pass