class_name DisplaySettings extends Resource
signal settings_changed()

const POSSIBLE_RESOLUTIONS: Array[Vector2i] = [
	Vector2i(1280, 720),
	Vector2i(1920, 1080),
	Vector2i(2880, 1800)
]

@export var resolution: Vector2i
@export var fps_limit: int
@export var window_mode: DisplayServer.WindowMode
@export var vsync_mode: DisplayServer.VSyncMode

func initialize() -> void:
	DisplayServer.window_set_size(resolution)
	DisplayServer.window_set_vsync_mode(vsync_mode)
	DisplayServer.window_set_mode(window_mode)
	Engine.max_fps = fps_limit
	pass