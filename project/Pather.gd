extends PathFollow2D

export (float) var velocity = 35.0
func _ready():
	unit_offset = rand_range(0, 1)
	modulate = Color(rand_range(0, 1), rand_range(0, 1), rand_range(0, 1))

func _process(delta):
	offset += velocity * delta
	
