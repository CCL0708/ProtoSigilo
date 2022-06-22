extends RayCast2D



func _physics_process(_delta: float) -> void:
	if is_colliding():
		if get_collider() is KinematicBody2D:
			print("te vio")
			enabled = false 
			get_tree().change_scene("res://Derrota.tscn") 


