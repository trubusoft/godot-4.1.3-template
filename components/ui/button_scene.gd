# Given a `target_scene`, this component will change scene to it when being clicked


extends Button


@export var target_scene: String


func _ready():
	if target_scene == '':
		push_warning('target_scene path sould not be empty')


func _on_pressed():
	if target_scene != '':
		get_tree().change_scene_to_file(target_scene)
