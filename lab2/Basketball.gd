extends Sprite2D

@export var speed = 0.5
var dir = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var viewport_size = get_viewport_rect().size
	var viewport_height = viewport_size.y
	var viewport_width = viewport_size.x
	print(position.x)
	position.y += (10 * speed * dir)
	if position.y >= viewport_height:
		dir = -1
	if position.y <= (viewport_height / 2):
		dir = 1
	
	if Input.is_action_pressed("right") && position.x < viewport_width:
		position.x += 5
	if Input.is_action_pressed("left") && position.x > 0:
		position.x -= 5
	pass
