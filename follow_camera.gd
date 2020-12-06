extends Spatial

onready var camera = get_viewport().get_camera()

func _process(delta):
	global_transform.origin.x = camera.global_transform.origin.x
	global_transform.origin.y = camera.global_transform.origin.y
	global_transform.origin.z = camera.global_transform.origin.z	
