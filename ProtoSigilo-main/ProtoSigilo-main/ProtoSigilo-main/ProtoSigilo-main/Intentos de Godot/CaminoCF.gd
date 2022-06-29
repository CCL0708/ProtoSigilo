extends PathFollow2D



var currentcfs = 0
var scene = preload("res://Cazafantasmas.tscn")

func _physics_process(_delta: float) -> void:
	
	if SpawnCf.cfs != currentcfs:
		var cazafantasma = scene.instance()
		add_child(cazafantasma)
		currentcfs += 1

