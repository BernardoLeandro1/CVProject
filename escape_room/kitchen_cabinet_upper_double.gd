extends StaticBody3D


var open = false
@onready var player := $"../../player"
@onready var anim := $upper_cabinet_doors
@onready var door := $"."


func interact():
	if !open:
		anim.play("upper_cabinet_doors")
		open = true
	elif open:
		anim.play_backwards("upper_cabinet_doors")
		open = false
