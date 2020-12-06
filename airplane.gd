extends Spatial

export var speed = 2.5

var mesh

var min_angle = deg2rad(-35)
var max_angle = deg2rad(35)

var target_angle = 0

func _ready():
	mesh = $mesh
	
func _process(delta):
	mesh.rotation.z = lerp_angle(mesh.rotation.z, target_angle, 2.5 * delta)
	rotation.y -= mesh.rotation.z * 1.5 * delta
		
	translate_object_local(Vector3.FORWARD * speed * delta)
	
	if Input.is_action_pressed("player_left"):
		target_angle = min_angle
	elif Input.is_action_pressed("player_right"):
		target_angle = max_angle
	else:
		target_angle = 0
		
	if Input.is_action_pressed("player_up"):
		rotate_object_local(Vector3.RIGHT, -0.5 * delta)
	elif Input.is_action_pressed("player_down"):
		rotate_object_local(Vector3.RIGHT, 0.5 * delta)
