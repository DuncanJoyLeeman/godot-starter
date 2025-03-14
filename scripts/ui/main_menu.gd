extends Control
const MAIN_MENU_MAP_LIBRARY = "res://resources/tables/map/main_menu_map_library.tres"
@onready var map_loader: MapLoader = MapLoader.new()

func _ready() -> void:
	map_loader.map_library = preload(MAIN_MENU_MAP_LIBRARY)
	map_loader.load_map(0)
	pass

func _toggle_settings_menu() -> void:

	pass

func _close_game() -> void:
	get_tree().quit()
	pass