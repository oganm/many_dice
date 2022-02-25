extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Calculate_pressed():
	print($VBoxContainer/HBoxContainer/Dice.text)
	print(dice_syntax.dice_probs($VBoxContainer/HBoxContainer/Dice.text,3))
	print('hey')# Replace with function body.
