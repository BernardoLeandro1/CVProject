extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5
const mouse_sens = 0.4


@onready var head = $head
@onready var camera := $head/Camera3D
@onready var interaction := $head/Camera3D/interaction
@onready var hand := $head/Camera3D/hand
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
var picked_object
var pull_power = 10



func pick_object():
	var collider = interaction.get_collider()
	if collider != null and collider.is_in_group("interactable"):
		picked_object = collider
		print(collider.name)

func drop_object():
	if picked_object != null:
		picked_object = null

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
func _process(delta):
	var collider = interaction.get_collider()
	if collider != null:
		if Input.is_action_just_pressed("ui_interact") and collider.get_script() != null:
			collider.interact()

			#.get_script().interact()
		#$"../kitchen/kitchenCabinetUpperDouble2"
func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(deg_to_rad(-event.relative.x * mouse_sens))
		head.rotate_x(deg_to_rad(-event.relative.y * mouse_sens))
		head.rotation.x = clamp(head.rotation.x, deg_to_rad(-89), deg_to_rad(89))
		
	
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Pick up object
	if Input.is_action_just_pressed("pick_up"):
		if picked_object == null:
			pick_object()
		else:
			drop_object()

	


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("left", "right", "forward", "backward")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	if picked_object != null:
		var a = picked_object.global_transform.origin
		var b = hand.global_transform.origin
		picked_object.set_linear_velocity((b-a)*pull_power)

	move_and_slide()
