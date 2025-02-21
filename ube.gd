extends Sprite2D
var is_dragging = false
var mouse_offset

func _input(event):
	if not visible:
		return 
	
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			if get_rect().has_point(to_local(event.position)):
				is_dragging = true
				mouse_offset = get_global_mouse_position() - global_position
		elif event is InputEventMouseButton and not event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			is_dragging = false

func _process(delta):
	if is_dragging:
		global_position = get_global_mouse_position()
