extends StaticBody3D


var open = false
var in_animation = false
@onready var player := $"../../player"
@onready var d := $open_doors
@onready var doorleft := $"cabinetTelevisionDoors(Clone)/doorLeft"
@onready var hint3 := $MeshInstance3D
@onready var remote := $"../remoteTV"

@onready var light := $"../lampRoundFloor/OmniLight3D"

func _ready():
	hint3.visible = false
	light.visible = false

func _process(delta):
	if(remote.turn_on) == true and hint3.visible == false:
		hint3.visible = true
		light.visible = true

func interact():
	if !open:
		d.play("open_doors")
		open = true
	elif open:
		d.play_backwards("open_doors")
		open = false
