extends Node2D





# Called when the node enters the scene tree for the first time.
func _ready():
	Global.shop1 += 1
	$BuyBtn/Buy1.text = "CPS + " + str(Global.shop1 + 1)
	$BuyBtn/Cost.text = "price: " + str(Global.cost)
	$BuyBtn/lvl.text = "lvl: " + str(Global.shop1)

#does al the fancy on btn press
func _on_TextureButton_pressed():
	Global.mpsec += 1
	Global.cost += 10 / Global.shop1 * pow(1.07, 10)
	Global.money -= Global.cost
	Save.saveData("Main", "MoneyPerSecond", Global.mpsec)
	Save.saveData("Main", "Shop", Global.shop1)
	Save.saveData("Main", "Cost", Global.cost)
	$BuyBtn/lvl.text = "lvl: " + str(Global.shop1)
	$BuyBtn/Cost.text = "price: " + str(Global.cost)
	$BuyBtn/Buy1.text = "CPS + " + str(Global.shop1 + 1)
