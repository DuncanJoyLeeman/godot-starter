class_name DeveloperSettings extends Resource
#Signals
signal settings_changed()

#Variables
@export var console_enabled: bool
@export var fps_meter: bool

func initialize() -> void:
	Console.enabled = console_enabled
	pass