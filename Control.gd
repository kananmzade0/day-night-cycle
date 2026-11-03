extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Ready")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print("Process")
	pass


func _on_h_slider_value_changed(value: float) -> void:
	var hour = int(value)
	var minute = int((value - hour) * 60)
	var text = "%d:%02d" % [hour, minute]
	print("Slider value: %s" % text)
	$Label.text = text
