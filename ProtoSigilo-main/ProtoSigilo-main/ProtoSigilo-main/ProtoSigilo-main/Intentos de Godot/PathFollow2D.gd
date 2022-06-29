extends PathFollow2D


var currentcfs = 0
var scene = preload("res://Cazafantasmas.tscn")

func _physics_process(_delta: float) -> void:
	
	if SpawnCf.cfs != currentcfs:
		var CfCamina = PathFollow2D.new()
		var cazafantasma = scene.instance()
		add_child(CfCamina)
		add_child_below_node(cazafantasma,CfCamina)
		currentcfs += 1
		if SpawnCf.cfs >1:
			SpawnCf.speed -=300
