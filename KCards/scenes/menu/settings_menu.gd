extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_fullscreen_button_pressed():
	if(DisplayServer.window_get_mode() != DisplayServer.WINDOW_MODE_FULLSCREEN):
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		Config.setConfigValue("graphics", "is_fullscreen", true)
		
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		Config.setConfigValue("graphics", "is_fullscreen", false)


func _on_back_button_pressed():
	#TODO add backing to previous scene
	MenuAudio.buttonPressedSound()


	#SceneTransition.change_buttons(self,"res://KCards/scenes/menu/main_menu.tscn")
	
	
