tool
extends HBoxContainer

export var value = 0.0
export var label = "Label"
export var bar_color = Color.black
export var label_color = Color.black
export var label2 = ""

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(_delta):
	if Engine.editor_hint:
		set_value(value)
		set_label(label)
		set_bar_color(bar_color)
		set_label_color(label_color)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func set_value(x):
	$Bar.value = x
	value = $Bar.value

func set_label(x):
	get_node("Label").text = String(x)

func set_bar_color(x):
	$Bar.modulate = x

func set_label_color(x):
	$Label.modulate = x

func set_label2(x):
	get_node("Label2").text = String(x)
