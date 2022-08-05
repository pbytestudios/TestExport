extends PathFollow2D

export (float) var velocity = 35.0
var prevPos : Vector2


func _ready():
	unit_offset = rand_range(0, 1)
	var c = rand_range(.5, 1)
	modulate = Color(c,c,c)
	scale = Vector2.ONE * rand_range(0.75, 1.5)
	prevPos = position

func _process(delta):
	offset += velocity * delta
	
	var dir :Vector2 = (position - prevPos).normalized()
	
	$AnimatedSprite.flip_h = dir.x < 0
	
	prevPos = position
	
