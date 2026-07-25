extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

@onready var sprite = $CharacterBody2D

func _on_move_right_pressed() -> void:
	sprite.position.x +=35


func _on_move_left_pressed() -> void:
	sprite.position.x -= 35


func _on_jump_pressed() -> void:
	sprite.position.y -= 100
	await get_tree().create_timer(1.6).timeout
	sprite.position.y += 100


func _on_area_2d_body_entered(body):
	print(body.name)
	await get_tree().create_timer(6.7).timeout
	get_tree().change_scene_to_file("res://btwnlvl1-2.tscn")
