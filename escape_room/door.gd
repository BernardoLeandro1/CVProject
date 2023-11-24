extends StaticBody3D


var open = false
var in_animation = false
@onready var player := $"../../player"
@onready var d := $dooropen
@onready var doorway := $"."

func _process(delta):
	interact()


func interact():
	if Input.is_action_just_pressed("ui_interact") and !open and 33.5 < player.get_position().distance_to(doorway.get_position())  and player.get_position().distance_to(doorway.get_position()) < 37.0:
		d.play("Open")
		open = true
	elif Input.is_action_just_pressed("ui_interact") and open and 33.5 < player.get_position().distance_to(doorway.get_position())  and player.get_position().distance_to(doorway.get_position()) < 37.0:
		d.play_backwards("Open")
		open = false





