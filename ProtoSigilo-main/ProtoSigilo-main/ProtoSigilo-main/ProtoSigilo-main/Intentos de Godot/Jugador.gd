extends KinematicBody2D

var MaxVelocidad = 150
var Aceleracion = 700
var Movimiento = Vector2()

func _physics_process(delta):
	var axis = get_input_axis()
	if axis == Vector2.ZERO:
		apply_friction(Aceleracion * delta) #este cacho lo q hace es aplicar fricción si el movimiento no es recto comparando con el vector2.zero que seria el origen.... CREO q es algo asi
	else:
		apply_movement(axis * Aceleracion * delta)
	Movimiento =move_and_slide(Movimiento)



func get_input_axis():
	var axis = Vector2.ZERO
	axis.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	axis.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	return axis.normalized() 
	#este bloque ya si q no lo entiendo. creo q tiene q ver con la distancia recorrida en un eje cartesiano q de alguna manera  1 en diagonal es = a 1 en x y 1 en y




func apply_friction(amount):
	if Movimiento.length() > amount:
		Movimiento -= Movimiento.normalized() * amount
	else:
		Movimiento = Vector2.ZERO
	#este bloque no lo entiendo en absoluto



func apply_movement(amount): 
	Movimiento += amount
	if Movimiento.length() > MaxVelocidad:
		Movimiento = Movimiento.normalized() * MaxVelocidad
	#este tampoco


