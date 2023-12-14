extends Node3D
@onready var ladder := $ladder

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# get ladder position
	var ladder_pos = ladder.get_global_transform().origin
	var player_pos = get_node("../player").get_global_transform().origin
	
	# check if player is close enough to ladder
	if ladder_pos.x - 1 < player_pos.x and player_pos.x < ladder_pos.x + 1 and ladder_pos.y - 3 < player_pos.y and player_pos.y < ladder_pos.y + 3 and ladder_pos.z - 1 < player_pos.z and player_pos.z < ladder_pos.z + 1:
		#display window
		get_node("end").set("visible", true)
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)	
		
	
