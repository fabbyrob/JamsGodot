extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var speed = 10
var screen_size

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2()
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()
	
	#add_force(Vector2(), velocity)
	#position += velocity
		
	if velocity.x != 0:
		$AnimatedSprite.flip_h = velocity.x < 0
