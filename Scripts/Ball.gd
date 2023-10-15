extends Area2D

var speed : float = 100.0
var direction : Vector2 = Vector2.LEFT

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	speed += delta * 2
	global_position += speed * direction * delta	 

func generate_direction(): 
	var my_seed = "Which Direction".hash()
	seed(my_seed)
	var roll : int = randi()
	if roll % 2 != 0:
		direction = Vector2.LEFT
	else:
		direction = Vector2.RIGHT
	
