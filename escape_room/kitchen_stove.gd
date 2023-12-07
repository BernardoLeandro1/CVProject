extends StaticBody3D


var open = false
@onready var player := $"../../player"
@onready var anim := $stove_door
@onready var door := $"kitchenStove(Clone)/door"

func interact():
	if !open:
		anim.play("open_stove")
		open = true
	elif open:
		anim.play_backwards("open_stove")
		open = false
