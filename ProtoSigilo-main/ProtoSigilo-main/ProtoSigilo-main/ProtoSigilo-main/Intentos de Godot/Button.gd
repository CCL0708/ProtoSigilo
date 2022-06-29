extends Button





func _ready():
	pass # Replace with function body.





func _on_Button_pressed():
	SpawnCf.cfs -= SpawnCf.cfs
	SpawnCf.monedas -= SpawnCf.monedas
	get_tree().change_scene("res://Nivel1.tscn")
	
	
