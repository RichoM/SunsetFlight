extends Spatial

var mesh

var min_angle = deg2rad(-35)
var max_angle = deg2rad(35)
var target_angle = 0

func _ready():
	mesh = $MeshInstance

func _process(delta):
	mesh.rotation.z = lerp_angle(mesh.rotation.z, target_angle, 2.5 * delta)
	rotation.y -= mesh.rotation.z * 1.5 * delta
	
	if Input.is_action_pressed("ui_left"):
		target_angle = min_angle
	elif Input.is_action_pressed("ui_right"):
		target_angle = max_angle
	else:
		target_angle = 0
