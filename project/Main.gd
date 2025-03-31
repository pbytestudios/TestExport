extends Node2D

@export var entities:Array # (Array, PackedScene)
@export var info: Resource

@onready var version = $Control/MC/VBox/Version

func _ready():
	randomize()
	RenderingServer.set_default_clear_color(Color.DARK_SLATE_GRAY)
	
	for i in range(15):
		var b = entities[randf_range(0, entities.size())].instantiate()
		b.velocity = randf_range(35.0, 67.0)
		$Path2D.add_child(b)
		
	version.text = "Version: %0.2f" % info.version
 
func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
