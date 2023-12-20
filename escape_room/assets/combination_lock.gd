extends Node3D

@onready var number5 := $Sketchfab_model/root/GLTF_SceneRootNode/ClockFace5_2
@onready var number1 := $Sketchfab_model/root/GLTF_SceneRootNode/ClockFace1_3
@onready var number2 := $Sketchfab_model/root/GLTF_SceneRootNode/ClockFace2_4
@onready var number3 := $Sketchfab_model/root/GLTF_SceneRootNode/ClockFace3_5
@onready var number4 := $Sketchfab_model/root/GLTF_SceneRootNode/ClockFace4_6
@onready var lock := $"."
var unlocked = false
@onready var anim := $lock_up

func _process(delta):
	if( 0.6 < number1.rotation.z and  number1.rotation.z < 0.7 and 1.2 < number2.rotation.z and  number2.rotation.z < 1.3 and 2.5 < number3.rotation.z and  number3.rotation.z < 2.6 and 3.1 < number4.rotation.z and  number4.rotation.z < 3.2 and -1.3 < number5.rotation.z and  number5.rotation.z < -1.2) and !unlocked:
		unlocked = true
		anim.play("lock_up")
