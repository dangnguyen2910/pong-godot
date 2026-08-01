extends Node

const ball_scene: Resource = preload("res://scenes/ball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_ball()
	
func spawn_ball(): 
	var ball: CharacterBody2D = ball_scene.instantiate()
	var screen_size = get_viewport().get_visible_rect().size
	
	ball.position = Vector2(
		screen_size.x / 2, 
		randf_range(screen_size.y * 0.25, screen_size.y * 0.75)
	)
	
	add_child(ball)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
