class_name World extends Node3D

var map_loader: MapLoader

func _enter_tree() -> void:
	Main.world = self
	pass