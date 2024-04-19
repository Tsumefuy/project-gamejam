extends Control

func _ready():
	for button in get_tree().get_nodes_in_group("button"):
		button.connect("pressed", self, "on_button_pressed", [button])
		button.connect("mouse_exited", self, "mouse_interaction", [button, "mouse_exit"])
		button.connect("mouse_entered", self, "mouse_interaction", [button, "mouse_enter"])

func on_button_pressed(button: Button) -> void:
	match button.name:
		"Som":
			var _sound: bool = true
		"Dificuldade":
			var _difficult: bool = true
		"Voltar":
			var _back: bool = get_tree().change_scene("res://Cenas/interface/Menu.tscn")
			

func mouse_interaction(button: Button, state: String) -> void:
	match state:
		"mouse_exit":
			button.modulate.a = 1.0
		"mouse_enter":
			button.modulate.a = 7.0
