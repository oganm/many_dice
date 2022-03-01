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
	var output = dice_syntax.dice_probs($VBoxContainer/HBoxContainer/Dice.text,3)
	print('hey')# Replace with function body.
	var old_bars = $VBoxContainer/Output/Bars/BarContainer.get_children()
	for x in old_bars:
		x.queue_free()
	
	var keys = output.keys()
	keys.sort()
	
	for i in keys:
		var bar = bar_graph.instance()
		bar.set_value(output[i])
		bar.set_label(i)
		bar.set_label2(round(output[i]*10000)/100)
		$VBoxContainer/Output/Bars/BarContainer.add_child(bar)
