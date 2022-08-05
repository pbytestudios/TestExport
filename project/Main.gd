extends Node2D

export(Array, PackedScene) var entities:Array
export(Resource) var info

onready var version = $Control/MC/VBox/Version

func _ready():
	randomize()
	VisualServer.set_default_clear_color(Color.darkslategray)
	
	for i in range(15):
		var b = entities[rand_range(0, entities.size())].instance()
		b.velocity = rand_range(35.0, 67.0)
		$Path2D.add_child(b)
		
	version.text = "Version: %0.2f" % info.version
 
func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
