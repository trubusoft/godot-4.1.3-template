# Given a `target_scene`, this component will change scene to it when being clicked


extends Control


@export var target_scene: PackedScene


func _ready():
	assert(target_scene != null, "target_scene must not be null")


func _on_pressed():
	get_tree().change_scene_to_packed(target_scene)
