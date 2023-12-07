extends StaticBody3D


var open = false
@onready var player := $"../../player"
@onready var anim := $"microwavé"
@onready var door := $"kitchenMicrowave(Clone)/Group"


func interact():
	if !open:
		anim.play("open_microwave")
		open = true
	elif open:
		anim.play_backwards("open_microwave")
		open = false
