class_name AudioSettings extends Resource
enum AudioBus{
	AUDIOBUS_MASTER, AUDIOBUS_MUSIC, AUDIOBUS_SFX, AUDIOBUS_DIALOGUE
}

signal settings_changed()

@export_range(0, 100) var master_volume: float
@export_range(0, 100) var music_volume: float
@export_range(0, 100) var sfx_volume: float
@export_range(0, 100) var dialogue_volume: float

func initialize() -> void:
	AudioServer.set_bus_volume_db(AudioBus.AUDIOBUS_MASTER, linear_to_db(master_volume))
	AudioServer.set_bus_volume_db(AudioBus.AUDIOBUS_MUSIC, linear_to_db(music_volume))
	AudioServer.set_bus_volume_db(AudioBus.AUDIOBUS_SFX, linear_to_db(sfx_volume))
	AudioServer.set_bus_volume_db(AudioBus.AUDIOBUS_DIALOGUE, linear_to_db(dialogue_volume))
	pass