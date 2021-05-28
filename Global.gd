extends Node2D

var money = 0
var money_per_click = 1
var mpsec = 1
#Vars for shop
var shop1 = 0
var cost = 10


# Called when the node enters the scene tree for the first time.
func _ready():
	money = Save.loadData("Main", "Money", 0)
	mpsec = Save.loadData("Main", "MoneyPerSecond", 0)
	shop1 = Save.loadData("Main", "Shop", 0)
	cost = Save.loadData("Main", "Cost", 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
