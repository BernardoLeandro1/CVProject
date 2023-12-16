extends StaticBody3D


var open = false
@onready var player := $"../../player"
@onready var anim := $fridge_door
@onready var door := $"kitchenFridgeLarge(Clone)/doorLeft"



func interact():
	if !open:
		anim.play("open_fridge")
		open = true
	elif open:
		anim.play_backwards("open_fridge")
		open = false
