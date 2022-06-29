extends RayCast2D






func _physics_process(_delta: float) -> void:
	if is_colliding():
		if get_collider() is StaticBody2D: #detecta paredes
			pass
		elif get_collider() is KinematicBody2D: # El bloque este hace q el rayito del enemigo te detecte (falta agregar que pasa cuando te detecta)
			
			SpawnCf.cfs += 1
			print(SpawnCf.cfs) #cambia el valor del singleton
			enabled = false 
			get_parent().set_visible(false)
			
