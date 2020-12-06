extends AudioStreamPlayer

func _ready():
	yield(get_tree().create_timer(5), "timeout")
	play()
	
func _input(event):
	if event.is_action_released("audio_toggle"):
		playing = !playing
