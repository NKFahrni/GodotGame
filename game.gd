extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	UpdateUI()


#Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
 UpdateUI()

#Updates the UI
func UpdateUI():
	$Control/money.text = str(Global.money) + " $"
	$Control/mpsec.text = str(Global.mpsec) + " per sec"

func _on_TextureButton_pressed():
	Global.money += Global.money_per_click
	Save.saveData("Main", "Money", Global.money)
	var click = load("res://ClickMSG.tscn")
	var clickInstance = click.instance()
	clickInstance.position = get_local_mouse_position()
	add_child(clickInstance)
	UpdateUI()

func _on_Moneypersec_timeout():
	Global.money += Global.mpsec
	UpdateUI()


func _on_MenuOpen_pressed():
	$Control/PopupMenu.show()


func _on_MenuClose_pressed():
	$Control/PopupMenu.hide()
