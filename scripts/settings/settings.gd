class_name Settings extends Resource
@export var display_settings: DisplaySettings
@export var grapics_settings: GraphicsSettings
@export var developer_settings: DeveloperSettings
@export var audio_settings: AudioSettings

func initialize() -> void:
	display_settings.initialize()
	grapics_settings.initialize()
	developer_settings.initialize()
	audio_settings.initialize()
	pass