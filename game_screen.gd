extends Node2D
@onready var Background = $gameBackground
@onready var animation_player = $Cart/AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Background.play("bg_animation")
	animation_player.play("cartAnimation")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
