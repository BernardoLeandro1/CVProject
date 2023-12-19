extends Node3D

const RopeScene: PackedScene = preload("res://addons/rope3d/Rope3D.tscn")

@onready var start_point = $player/RigidBody3D/Marker3D
@onready var end_point = $RigidBody3D/Marker3D


func _ready():
	var rope = RopeScene.instantiate()
	rope.start_point = start_point
	rope.end_point = end_point
	rope.rope_length = 5
	rope.resolution = 5
	rope.radius = 0.1
	
	var ok = rope.can_make()
	print(ok)
	ok = false
	if ok:
		add_child(rope)
		rope.make()
	
