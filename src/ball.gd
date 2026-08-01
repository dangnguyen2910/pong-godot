extends CharacterBody2D

@export var speed: float = 1500.0

var direction: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var x_direction: int = [-1, 1].pick_random()
	var y_direction: float = randf_range(-0.7, 0.7)
	
	direction = Vector2(x_direction, y_direction).normalized()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity = direction * speed 
	move_and_slide()
