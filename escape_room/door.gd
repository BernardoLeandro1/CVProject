extends StaticBody3D


var open = false
var in_animation = false
@onready var anim = get_node("dooropen")
@onready var d := $dooropen

func _process(delta):
	interact()


func interact():
	if Input.is_action_just_pressed("ui_interact") and !open:
#		tween.interpolate_property(self, "rotation_degrees", Vector3(0, rotation_degrees.y, 0), Vector3(0, rotation_degrees.y+90, 0), 0.5, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
#		in_animation = true
		d.play("Open")
		open = true
	elif Input.is_action_just_pressed("ui_interact") and open:
		d.play_backwards("Open")
		open = false





