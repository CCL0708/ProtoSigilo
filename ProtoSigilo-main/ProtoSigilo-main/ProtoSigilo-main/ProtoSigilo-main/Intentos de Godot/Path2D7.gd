extends Path2D


var currentcfs = 0
var scene = preload("res://Cazafantasmas.tscn")

func _physics_process(_delta: float) -> void:
	
	if SpawnCf.cfs != currentcfs:
		var CfCamina = PathFollow2D.new()
		var cazafantasma = scene.instance()
		add_child(CfCamina)
		CfCamina.add_child(cazafantasma)
		currentcfs += 1
		
		if SpawnCf.cfs >1:
			if CfCamina.get_child_count() >1:
				CfCamina.remove_child(cazafantasma)
