extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

@onready var sprite = $Sprite2D

func _on_move_right_pressed() -> void:
	sprite.position.x +=20


func _on_move_left_pressed() -> void:
	sprite.position.x -= 20


func _on_jump_pressed() -> void:
	sprite.position.y -= 100
	await get_tree().create_timer(1.4).timeout
	sprite.position.y += 100

func _on_area_2d_area_entered(area: Area2D) -> void:
	print("Hit!")
	get_tree().reload_current_scene()
