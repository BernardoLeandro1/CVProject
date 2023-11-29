extends StaticBody3D


var open = false
var in_animation = false
@onready var player := $"../../player"
@onready var d := $open_doors
@onready var doorleft := $"cabinetTelevisionDoors(Clone)/doorLeft"


func _process(delta):
	interact()


func interact():
	if Input.is_action_just_pressed("ui_interact") and !open and 13.0 < player.get_position().distance_to(doorleft.get_position())  and player.get_position().distance_to(doorleft.get_position()) < 14.0:
		d.play("open_doors")
		open = true
	elif Input.is_action_just_pressed("ui_interact") and open and 12.0 < player.get_position().distance_to(doorleft.get_position())  and player.get_position().distance_to(doorleft.get_position()) < 14.0:
		d.play_backwards("open_doors")
		open = false
