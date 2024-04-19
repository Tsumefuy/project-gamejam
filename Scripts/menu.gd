extends Control

func _ready():
	for button in get_tree().get_nodes_in_group("button"):
		button.connect("pressed", self, "on_button_pressed", [button])
		button.connect("mouse_exited", self, "mouse_interaction", [button, "mouse_exit"])
		button.connect("mouse_entered", self, "mouse_interaction", [button, "mouse_enter"])

func on_button_pressed(button: Button) -> void:
	match button.name:
		"JOGAR":
			var _game: bool = true
		"Opcoes":
			var _settings: bool = get_tree().change_scene("res://Cenas/interface/Settings.tscn")
		"Sair":
			get_tree().quit()
			

func mouse_interaction(button: Button, state: String) -> void:
	match state:
		"mouse_exit":
			button.modulate.a = 1.0
		"mouse_enter":
			button.modulate.a = 7.0

