extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var bar_graph = preload('utils/BarGraph/BarGraph.tscn')

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Calculate_pressed():
	print($VBoxContainer/HBoxContainer/Dice.text)
	print(dice_syntax.dice_probs($VBoxContainer/HBoxContainer/Dice.text,3))
	var depth = $VBoxContainer/HBoxContainer/VBoxContainer/ExplodeDepth.value
	var output = dice_syntax.dice_probs($VBoxContainer/HBoxContainer/Dice.text,depth)
	var old_bars = $VBoxContainer/Output/Bars/BarContainer.get_children()
	for x in old_bars:
		x.queue_free()
	
	var keys = output.keys()
	keys.sort()
	
	var header = bar_graph.instance()
	header.set_value(0)
	header.set_label('#')
	header.set_label2('%')
	header.set_bar_color('e0e0e0')
	header.set_label_color('e0e0e0')
	header.set_label2_color('e0e0e0')
	$VBoxContainer/Output/Bars/BarContainer.add_child(header)
	
	for i in keys:
		var bar = bar_graph.instance()
		bar.set_value(output[i])
		bar.set_label(i)
		bar.set_label2(round(output[i]*10000)/100)
		bar.set_bar_color('e0e0e0')
		bar.set_label_color('e0e0e0')
		bar.set_label2_color('e0e0e0')
		$VBoxContainer/Output/Bars/BarContainer.add_child(bar)
