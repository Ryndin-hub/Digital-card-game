extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_back_mode_button_pressed():
	MenuAudio.buttonPressedSound()
	#get_tree().change_scene_to_file("res://KCards/scenes/menu/mode_menu.tscn")
	
	SceneTransition.change_buttons(self,"res://KCards/scenes/menu/mode_menu.tscn")
	


func _on_editing_deck_button_pressed():
	MenuAudio.buttonPressedSound()
	SceneTransition.change_buttons(self,"res://KCards/scenes/menu/EditDeck.tscn")
	MenuAudio.changeBackgroundMusic("deckBuilding")


func _on_easy_mode_button_pressed():
	MenuAudio.buttonPressedSound()
	if (DeckManager.deck.size() == DeckManager.deckMaxSize):
		BlackTransition.change_buttons_dark(self,"res://KCards/scenes/menu/battlefield/battlenode.tscn")
		MenuAudio.changeBackgroundMusic("battle")
	else:
		SceneTransition.change_buttons(self,"res://KCards/scenes/menu/EditDeck.tscn")
		MenuAudio.changeBackgroundMusic("deckBuilding")
	#TODO add transition
	


func _on_normal_mode_button_pressed():
	MenuAudio.buttonPressedSound()
