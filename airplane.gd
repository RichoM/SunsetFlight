extends Spatial

export var speed = 2.5

var mesh
var sky

var min_angle = deg2rad(-35)
var max_angle = deg2rad(35)

var target_angle = 0

func _ready():
	mesh = $mesh
	sky = $skybox

func _process(delta):
	mesh.rotation.z = lerp_angle(mesh.rotation.z, target_angle, 2.5 * delta)
	rotation.y -= mesh.rotation.z * 1.5 * delta
	sky.rotation.y = -rotation.y
	
	translate_object_local(Vector3.FORWARD * speed * delta)
	
	if Input.is_action_pressed("ui_left"):
		target_angle = min_angle
	elif Input.is_action_pressed("ui_right"):
		target_angle = max_angle
	else:
		target_angle = 0
