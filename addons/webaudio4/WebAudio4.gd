@tool
extends EditorPlugin


func _enter_tree():
	add_autoload_singleton("JavascriptManager","res://addons/webaudio4/JavascriptManager.gd")
	add_autoload_singleton("AudioManager","res://addons/webaudio4/AudioManager.gd")
	
	add_custom_type("AudioSpacial2D", "Node2D", load("res://addons/webaudio4/AudioSpacial2D.gd"), load("res://addons/webaudio4/icon.png"))
	add_custom_type("AudioListener2D", "Node2D", load("res://addons/webaudio4/AudioListener2D.gd"), load("res://addons/webaudio4/listener.png"))


func _exit_tree():
	remove_autoload_singleton("JavascriptManager")
	remove_autoload_singleton("AudioManager")
	
	remove_custom_type("AudioSpacial2D")
	remove_custom_type("AudioListener2D")
