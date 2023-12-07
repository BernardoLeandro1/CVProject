extends StaticBody3D


var open = false
@onready var player := $"../../player"
@onready var anim := $sink_door
@onready var door := $"kitchenSink(Clone)/door"



func interact():
	if !open:
		anim.play("open_sink")
		open = true
	elif open:
		anim.play_backwards("open_sink")
		open = false
