extends Node

# Export variables for button and destination scene
@export var navigation_button: Button
@export var destination_scene: String

func _ready():
	if navigation_button:
		navigation_button.pressed.connect(_on_button_pressed)

func _on_button_pressed():
	if destination_scene != "":
		get_tree().change_scene_to_file(destination_scene)
