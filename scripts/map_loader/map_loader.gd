class_name MapLoader extends Node3D
signal before_map_load(loader: MapLoader)
signal after_map_load(loader: MapLoader)

@export var map_library: MapLibrary

var current_level: Node3D

func load_map(map_id: int) -> void:
	before_map_load.emit(self)
	# Check if level exists
	if map_id >= map_library.maps.size():
		return

	_clear_world()

	current_level = map_library.maps[map_id].instantiate()
	current_level.set_name("Level %d" % map_id)
	
	Main.world.add_child(current_level)

	after_map_load.emit(self)
	pass

func _clear_world() -> void:
	# Delete all children of the world node if they exist
	if Main.world.get_child_count() > 0:
		current_level = null
		var world_children = Main.world.get_children()
		for child in world_children:
			child.queue_free()
	pass