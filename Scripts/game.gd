extends Node2D

@onready var ball_cont = $BallContainer
@onready var background = $Graphics/Background
var ball_prefab = preload("res://Scenes/Ball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	generate_ball()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func generate_ball():
	var ball = ball_prefab.instantiate()
	ball_cont.add_child(ball)
	var width : int = background.size.x
	var height : int = background.size.y
	ball.global_position = Vector2(width/2, height/2)
	ball.generate_direction()
