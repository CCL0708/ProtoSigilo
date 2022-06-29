extends Node2D





# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	if $Path2D7.get_child_count() > 0:
		get_tree().reload_current_scene()
		SpawnCf.cfs ==0
		SpawnCf.monedas == 0
	else:
		pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
