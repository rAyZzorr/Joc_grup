extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Velocitat = 10
var velocitat = Vector2.RIGHT


# Called when the node enters the scene tree for the first ti

# Called every frame. 'delta' is the elapsed time since the previous frame.
#
func _process(delta):
	if position.x == 438:
		velocitat = Vector2.LEFT 
	if position.x == 10:
		velocitat = Vector2.RIGHT
	position += velocitat*Velocitat
