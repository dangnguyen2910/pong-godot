extends CharacterBody2D

@export var speed: float = 1000.0
@export var move_up_action: String
@export var move_down_action: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed(move_down_action): 
		velocity = Vector2.DOWN * speed
		move_and_slide()
	
	if Input.is_action_pressed(move_up_action): 
		velocity = Vector2.UP * speed
		move_and_slide()
