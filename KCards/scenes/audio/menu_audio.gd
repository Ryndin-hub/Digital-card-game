extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func buttonPressedSound() -> void:
	$ButtonPressedSound.play()
	
func drawCardsSound() -> void:
	$DrawCardsSound.play()
	
func shuffleDeckSound() -> void:
	$ShuffleDeckSound.play()

func BAM() -> void:
	$BAM.play()

func changeBackgroundMusic(newMusic: String) -> void:
	for audioStream in self.get_children():
		audioStream.stop()
		
		
	match newMusic:
		"deckBuilding":
			$DeckBuildingBackgroundMusic.play()
			
		"menu":
			$MenuBackGroundMusic.play()
			
		"battle":
			$BattleBackgroundMusic.play()
