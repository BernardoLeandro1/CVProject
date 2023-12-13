extends Node3D

@onready var light1 := $CelingFan/OmniLight3D
@onready var light2 := $CelingFan2/OmniLight3D
@onready var steam := $pot_steam/GPUParticles3D
@onready var fire := $fire
@onready var green_steam = load("res://assets/particle_materials/green.tres")





# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#get the current position of the apple
	var apple = get_node("barcase/BookcaseOpen/apple")
	var apple_pos = apple.get_global_transform().origin
	
	#get the current position of the pineapple
	var pineapple = get_node("barcase/BookcaseOpen/pineapple")
	var pineapple_pos = pineapple.get_global_transform().origin

	#get the current position of the coconut
	var coconut = get_node("barcase/BookcaseOpen/coconut")
	var coconut_pos = coconut.get_global_transform().origin
	
	#get the current position of the pot
	var pot = get_node("pot")
	var pot_pos = pot.get_global_transform().origin
	
	var apple_inside
	var pineapple_inside
	var coconut_inside

	#check if they're inside the pot
	apple_inside = pot_pos.x - 0.4 <= apple_pos.x and apple_pos.x < pot_pos.x + 0.4 and pot_pos.y - 0.4 <= apple_pos.y and apple_pos.y < pot_pos.y + 0.4 and pot_pos.z - 0.4 <= apple_pos.z and apple_pos.z < pot_pos.z + 0.4
	pineapple_inside = pot_pos.x - 0.4 <= pineapple_pos.x and pineapple_pos.x < pot_pos.x + 0.4 and pot_pos.y - 0.4 <= pineapple_pos.y and pineapple_pos.y < pot_pos.y + 0.4 and pot_pos.z - 0.4 <= pineapple_pos.z and pineapple_pos.z < pot_pos.z + 0.4
	coconut_inside = pot_pos.x - 0.4 <= coconut_pos.x and coconut_pos.x < pot_pos.x + 0.4 and pot_pos.y - 0.4 <= coconut_pos.y and coconut_pos.y < pot_pos.y + 0.4 and pot_pos.z - 0.4 <= coconut_pos.z and coconut_pos.z < pot_pos.z + 0.4
	
	var ing_count = 0
	if apple_inside:
		ing_count |= 1
	if pineapple_inside:
		ing_count |= 10
	if coconut_inside:
		ing_count |= 100
	if ing_count == 0:
		steam.set("amount",10)
	if ing_count == 001 or ing_count == 010 or ing_count == 100:
		steam.set("amount", 100)
	if ing_count == 011 or ing_count == 101 or ing_count == 110:
		steam.set("amount", 200)
	if ing_count == 111:
		# change steam color to green
		steam.set("amount", 500)
		steam.set("process_material", green_steam)
		if fire != null:
			fire.queue_free()

		
	
			
		
		
