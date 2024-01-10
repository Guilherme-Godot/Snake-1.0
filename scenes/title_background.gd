extends TextureRect

func _input(event):
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()
	else:
		get_tree().change_scene_to_file("res://scenes/level_1.tscn")
