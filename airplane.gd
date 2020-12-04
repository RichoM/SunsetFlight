extends Spatial

var mesh

var min_angle = deg2rad(-45)
var max_angle = deg2rad(45)

func _ready():
	mesh = $MeshInstance

func _process(delta):
	print(mesh.rotation.z)
	if Input.is_action_pressed("ui_left"):
		rotation.y += delta
		mesh.rotation.z -= delta
		if mesh.rotation.z < min_angle: mesh.rotation.z = min_angle
	elif Input.is_action_pressed("ui_right"):
		rotation.y -= delta
		mesh.rotation.z += delta
		if mesh.rotation.z > max_angle: mesh.rotation.z = max_angle
