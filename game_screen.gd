extends Node2D
@onready var Background = $gameBackground

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Background.play("bg_animation")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
