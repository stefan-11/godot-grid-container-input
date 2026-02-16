extends ColorRect

@export var color_default: Color = Color(1.00, 1, 0.33, 1)
@export var color_highlighted: Color = Color(0.608, 0.0, 0.0, 1.0)

func _gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		print("gui input", event)

	if event is InputEventMouseMotion:
		self.color = color_highlighted
		#get_viewport().set_input_as_handled()
		
	#print("gui input", event)

func _on_mouse_exited() -> void:
	self.color = color_default
