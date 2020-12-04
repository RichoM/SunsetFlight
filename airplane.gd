extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var angle = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(rotation)
	if rotation.z <= -1:
		angle = -1
	elif rotation.z >= 1:
		angle = 1
	
	rotate(Vector3.FORWARD, angle * delta)
