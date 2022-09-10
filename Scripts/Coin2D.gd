extends Area2D

signal coinCollected

func _on_Coin2D_body_entered(body):
	if body.get_name()=="Player":
		
		body.add_Coin()
		
		print("una moneda")
		#emit_signal("coinCollected") #xq se suma dos veses la moneda
		queue_free()
		pass # Replace with function body.
