extends StaticBody3D

@onready var number := $"."
# Called every frame. 'delta' is the elapsed time since the previous frame.
func interact():
	number.rotate_z(36*PI/180)
