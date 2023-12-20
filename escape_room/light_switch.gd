extends StaticBody3D


var open = false
@onready var player := $"../../player"
@onready var anim := $switchlight

func interact():
	if !open:
		print("HEY")
		anim.play("switchlight")
		open = true
	elif open:
		anim.play_backwards("switchlight")
		open = false
