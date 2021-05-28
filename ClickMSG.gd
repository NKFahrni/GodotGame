extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$LabelAmount.text = "+ " + str(Global.money_per_click) + " $"

func _physics_process(delta):
	position.y -= 5
