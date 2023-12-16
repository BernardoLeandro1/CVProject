extends StaticBody3D


var open = false
var in_animation = false
@onready var player := $"../../player"
@onready var d := $open_doors
@onready var doorleft := $"cabinetTelevisionDoors(Clone)/doorLeft"


func interact():
	if !open:
		d.play("open_doors")
		open = true
	elif open:
		d.play_backwards("open_doors")
		open = false
