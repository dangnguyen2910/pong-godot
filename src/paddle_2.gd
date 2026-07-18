extends CharacterBody2D

@export var speed: float = 100.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("paddle_2_move_down"): 
		velocity = Vector2.DOWN * speed
		move_and_slide()
	
	if Input.is_action_pressed("paddle_2_move_up"): 
		velocity = Vector2.UP * speed
		move_and_slide()
