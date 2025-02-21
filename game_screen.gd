extends Node2D
@onready var Background = $gameBackground
@onready var animation_player = $Cart/AnimationPlayer
@onready var cone_btn = $Panel/ConeBtn
@onready var ube_container = $Cart/Ube
@onready var cone = $Cart/Cone
@onready var ube = $Cart/Ube

var is_cone_visible = false

func _ready():
	Background.play("bg_animation")
	animation_player.play("cartAnimation")
	cone.visible = false
	ube.visible = false

func _process(delta: float):
	pass

func _on_cone_btn_pressed():
	cone.visible = true
	is_cone_visible = true

func _on_ube_container_pressed():
	if is_cone_visible:
		ube.visible = true
		cone.visible = false
