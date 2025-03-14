extends Node
var settings: Settings = preload("res://resources/settings/default_settings.tres")
var world: World
var ui: UserInterface
var game_state: GameStates

enum GameStates{
	MAIN_MENU,
	PLAYING,
	PAUSED
}

func _ready() -> void:
	settings.initialize()
	pass

func _initialize_main_menu_background_scene() -> void:
	pass

func _switch_game_state(new_state: GameStates) -> void:
	match new_state:
		GameStates.MAIN_MENU:
			pass
		GameStates.PLAYING:
			pass
		GameStates.PAUSED:
			pass
	pass