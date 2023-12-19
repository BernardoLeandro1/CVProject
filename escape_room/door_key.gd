extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		for body in $Area2D.get_overlapping_bodies():
			if body.is_in_group("interactable"):
				body.queue_free()
