extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
var velocitat = Vector2(200,-100)

# Called when the node enters the scene tree for the first time.
func _ready():
	position= Vector2(300,500)




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocitat * delta  
	
	
