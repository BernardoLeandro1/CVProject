extends StaticBody3D


var open = false
@onready var player := $"../../player"
@onready var anim := $cabinet_door
@onready var door := $"kitchenCabinet(Clone)/door"

func interact():
	if !open:
		anim.play("cabinet_door")
		open = true
	elif open:
		anim.play_backwards("cabinet_door")
		open = false
