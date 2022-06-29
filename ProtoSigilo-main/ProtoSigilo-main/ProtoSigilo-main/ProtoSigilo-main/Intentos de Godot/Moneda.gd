extends Area2D








func _on_Moneda_body_entered(_body):
		
		SpawnCf.monedas += 1
		print(SpawnCf.monedas)
		$Sprite.set_visible(false) 
		
		set_deferred("monitoring", false)
		
		if SpawnCf.monedas == 8:
			get_tree().change_scene("res://Victoria.tscn")



