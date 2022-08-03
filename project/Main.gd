extends Node2D

export(PackedScene) var bug
export(Resource) var info

onready var version = $Control/MC/VBox/Version

func _ready():
	randomize()
	VisualServer.set_default_clear_color(Color.peachpuff)
	
	for i in range(20):
		var b = bug.instance()
		b.velocity = rand_range(35.0, 67.0)
		$Path2D.add_child(b)
		
	version.text = "Version: %0.2f" % info.version
 
func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
