extends Node2D
@onready var Background = $titleBackground
@onready var animation_player = $Panel/AnimationPlayer
@onready var panel = $Panel
@onready var open_close_btn = $Panel/OpenClose_Btn
var is_panel_open = false

func _ready():
	Background.play("default")
	panel.position.x = 1216
	open_close_btn.connect("pressed", _toggle_panel)

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		_toggle_panel()

func _toggle_panel():
	if is_panel_open:
		animation_player.play("slide_out_panel")
	else:
		animation_player.play("slide_in_panel")
	is_panel_open = !is_panel_open
