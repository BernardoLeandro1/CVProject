extends Node3D

var open = false

@onready var d := $dooropen
@onready var lock := $"../combination_lock"

func interact():
	if lock.unlocked and !open:
		d.play("Open")
		lock.visible = false
		lock.position.y = -100
		open = true
	elif open:
		d.play_backwards("Open")
		open = false




