extends RayCast2D



func _physics_process(_delta: float) -> void:
	if is_colliding():
		if get_collider() is KinematicBody2D:  # El bloque este hace q el rayito del enemigo te detecte y te mande a la escena de derrota
			get_tree().change_scene("res://Derrota.tscn") 
			


