extends CanvasLayer

var coins=0

func _ready():
	
	#xq se suma dos veses la moneda
	#var coinNode=get_tree().get_root().find_node("Coin2D",true,false)
	#coinNode.connect("coinCollected",self,"handleCoinCollected")
	
	$CoinsCollectedText.text=String(coins)
	
func handleCoinCollected():
	print("Coin Collected")
	coins+=1
	$CoinsCollectedText.text=String(coins)
	
	#para pasar el nivel
	if coins==4:
		print("GANASTE")
		get_tree().change_scene("res://Scenes/Mundo2.tscn")
	
