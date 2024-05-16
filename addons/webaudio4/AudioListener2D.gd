extends Node2D


var audio_manager: AudioManager
@export var listner_orientation = [0,0,0]

func _ready():
	set_notify_transform(true)
	set_notify_local_transform(true)
	
	audio_manager = AudioManager.new()


func change_rect(new_orientation):
	listner_orientation = new_orientation
	audio_manager.update_listener([global_position.x,global_position.y,-0.5])
	audio_manager.update_orientation_listener(listner_orientation)

func _notification(what):
	if what == NOTIFICATION_TRANSFORM_CHANGED and is_inside_tree(): 
		change_rect(listner_orientation)
