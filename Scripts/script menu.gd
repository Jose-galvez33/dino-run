extends Control



func _on_jugar_pressed() -> void:
 get_tree().change_scene_to_file("res://escenas/juego.tscn")

func _on_opciones_pressed() -> void:
 get_tree().change_scene_to_file("res://escenas/opciones.tscn")

func _on_creditos_pressed() -> void:
 get_tree().change_scene_to_file("res://escenas/opciones.tscn")
