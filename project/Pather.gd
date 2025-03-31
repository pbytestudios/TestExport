extends PathFollow2D

@export var velocity: float = 35.0
var prevPos : Vector2


func _ready():
	progress_ratio = randf_range(0, 1)
	var c = randf_range(.5, 1)
	modulate = Color(c,c,c)
	scale = Vector2.ONE * randf_range(0.75, 1.5)
	prevPos = position

func _process(delta):
	progress += velocity * delta
	
	var dir :Vector2 = (position - prevPos).normalized()
	
	if rotates:
		$AnimatedSprite2D.flip_v = dir.x < 0
	else:
		$AnimatedSprite2D.flip_h = dir.x < 0
	
	prevPos = position
