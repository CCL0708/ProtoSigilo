extends KinematicBody2D




var state : String = "patrol"

export (String , "loop" , "linear") var patrol_type = "loop" 
onready var pathfollow = get_parent()

func patrol(delta):
	if patrol_type == 'loop':
		pathfollow.offset += SpawnCf.speed * delta  # de alguna forma estos 3 bloques hacen q el bicho siga el pathfollow y asi creo el patrol
	else :
		pass

func _physics_process(delta: float) -> void:
	if state == "patrol":
		patrol(delta)


#todo idem a Enemigo.gd
