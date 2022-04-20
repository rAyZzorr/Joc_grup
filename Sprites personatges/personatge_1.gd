extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
var velocitat = Vector2(100,-100)
var direccio = Vector2.ZERO
var moviment := Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	position= Vector2(300,500)




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	direccio = Vector2.ZERO
	if Input.is_action_pressed("dreta"):
		direccio += Vector2.RIGHT
	if Input.is_action_pressed("esquerra"):
		direccio += Vector2.LEFT
	if Input.is_action_pressed("baix"):
		direccio += Vector2.UP

	if Input.is_action_pressed("dalt"):
		direccio += Vector2.DOWN
	moviment = move_and_slide(direccio.normalized() * velocitat)
	anima(moviment)
	
func anima(moviment:Vector2):
	if moviment.x > 0:
		$AnimatedSprite.play("camina costat")
		$AnimatedSprite.flip_h = true
	if moviment.x < 0:
		$AnimatedSprite.play("camina costat")
		$AnimatedSprite.flip_h = false
	if moviment.y < 0:
		$AnimatedSprite.play("camina esquena")
	if moviment.y > 0:
		$AnimatedSprite.play("camina cara")
	if moviment.x == 0 and moviment.y == 0:
		$AnimatedSprite.play("cara")
