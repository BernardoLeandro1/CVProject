extends StaticBody3D


var open = false
var in_animation = false
@onready var player := $"../../player"
@onready var d := $dooropen
@onready var doorway := $"."

func interact():
	if !open:
		d.play("Open")
		open = true
	elif open:
		d.play_backwards("Open")
		open = false





