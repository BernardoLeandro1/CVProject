extends StaticBody3D

@onready var light := $OmniLight3D
@onready var switch := $"../light_switch"
# Called when the node enters the scene tree for the first time.
func _ready():
	light.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (switch.open == true):
		light.visible = true
	elif (switch.open == false):
		light.visible = false
