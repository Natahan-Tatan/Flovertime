extends Panel

@export var escape_to_close:= false

func show_modal() -> void:
	self.show()

func _on_close_pressed() -> void:
	self.hide()

func _unhandled_key_input(event: InputEvent) -> void:
	if(escape_to_close && event.is_action("ui_cancel")):
		self.hide()
