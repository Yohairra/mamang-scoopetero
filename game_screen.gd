extends Node2D
@onready var Background = $gameBackground
@onready var animation_player = $Cart/AnimationPlayer
@onready var cone_btn = $Panel/ConeBtn
@onready var ube_container = $Cart/Ube
@onready var cone = $Cart/Cone
@onready var ube = $Cart/Ube

var is_cone_visible = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Background.play("bg_animation")
	animation_player.play("cartAnimation")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_cone_btn_pressed() -> void:
	cone.visible = true
	is_cone_visible = true

func _on_ube_container_pressed() -> void:
	if is_cone_visible:
		ube.visible = true
