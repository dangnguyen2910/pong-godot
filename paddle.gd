extends Area2D

@export var speed: float = 100.0 
var screen_size: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var distance: float = speed * delta 
	if Input.is_action_pressed("paddle_1_move_down"): 
			position.y += distance
	
	if Input.is_action_pressed("paddle_1_move_upsssss"): 
		position.y -= distance

	
