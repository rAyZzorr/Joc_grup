extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Velocitat=1
var velocitat_y = Vector2.DOWN
var velocitat_x = Vector2.RIGHT

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += (velocitat_y+velocitat_x)*Velocitat
	if position.x >= 438:
		velocitat_x = Vector2.LEFT 
	elif position.x <= 10:
		velocitat_x = Vector2.RIGHT
	if position.y >= 290:
		velocitat_y = Vector2.UP
	elif position.y <= 0:
		velocitat_y = Vector2.DOWN
	anima(velocitat_x)
func anima(velocitat_x):
	if velocitat_x > Vector2(0,0):
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = false
	if velocitat_x < Vector2(0,0):
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = true
	
	
	
	