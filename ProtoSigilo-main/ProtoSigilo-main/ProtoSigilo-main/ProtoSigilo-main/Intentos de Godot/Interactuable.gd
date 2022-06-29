extends KinematicBody2D

export var gravity: int = 1000
onready var pj = preload("res://Jugador.tscn")
var velocity : Vector2
var is_stuck: bool = true


func _physics_process(delta:float)-> void:
	if not is_stuck:
		apply_gravity(delta)
		velocity = move_and_slide(velocity, Vector2.UP)
		
func _on_Area2D_body_entered(delta):

	#if $Area2D.get_overlapping_bodies() is pj:
		is_stuck == false

func apply_gravity(delta) -> void:
	velocity.y += gravity * delta
