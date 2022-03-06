extends Control




var bar_graph = preload('utils/BarGraph/BarGraph.tscn')
onready var bars = get_node("VBoxContainer/Output/Output/Bars")
onready var dice = get_node("VBoxContainer/HBoxContainer/Dice")
onready var explode_depth = get_node('VBoxContainer/HBoxContainer/VBoxContainer/ExplodeDepth')
onready var mean = get_node("VBoxContainer/Output/Output/Mean")

func _ready():
	pass # Replace with function body.



#func _process(delta):
#	pass



func _on_Calculate_pressed():
	var depth = explode_depth.value
	var output = dice_syntax.dice_probs(dice.text,depth)
	var expected = dice_syntax.expected_value(output)
	var old_bars = bars.get_node('BarContainer').get_children()
	mean.text = 'Mean: '+str(expected)
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
	bars.get_node('BarContainer').add_child(header)
	
	for i in keys:
		var bar = bar_graph.instance()
		bar.set_value(output[i])
		bar.set_label(i)
		bar.set_label2(round(output[i]*10000)/100)
		bar.set_bar_color('e0e0e0')
		bar.set_label_color('e0e0e0')
		bar.set_label2_color('e0e0e0')
		bars.get_node('BarContainer').add_child(bar)


func _on_Dice_text_entered(new_text):
	_on_Calculate_pressed()
