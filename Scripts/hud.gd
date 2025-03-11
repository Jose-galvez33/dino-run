extends CanvasLayer


func _on_rendirse_pressed() -> void:
	get_tree().change_scene_to_file("res://escenas/perder.tscn")
