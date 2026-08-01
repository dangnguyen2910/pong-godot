extends CharacterBody2D

@export var speed: float = 1500.0

var direction: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var x_direction: int = [-1, 1].pick_random()
	var y_direction_1: float = randf_range(-0.5, -0.9)
	var y_direction_2: float = randf_range(0.5, 0.9)
	
	direction = Vector2(x_direction, [y_direction_1, y_direction_2].pick_random()).normalized()

func _physics_process(delta: float) -> void:
	velocity = direction * speed 
	
	var collision: KinematicCollision2D = move_and_collide(velocity * delta)
	if not collision: return
	
	direction = direction.bounce(collision.get_normal())
	fix_direction()
		
func fix_direction(): 
	if abs(direction.x) < 0.25:
		var s = sign(direction.x)
		if s == 0: s = [-1,1].pick_random() 
		direction.x = 0.25 * s
	
	if abs(direction.y) < 0.25: 
		var s = sign(direction.y)
		if s == 0: s = [-1,1].pick_random() 
		direction.y = 0.25 * s
		
	direction = direction.normalized()

	
