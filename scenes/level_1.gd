extends Node2D

func _ready():
	randomize()
	spawn_fruit()

func spawn_fruit():
	var new_fruit = preload("res://scenes/fruit.tscn").instantiate()
	var coordinates = Vector2(randi() % 8, randi() % 8)
	print(coordinates)
	var position = coordinates * 64
	print(position)
	position = position + %map1.global_position
	print(position)
	new_fruit.global_position = position
	print(new_fruit.global_position)
	add_child(new_fruit  )

func _input(event):
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()
