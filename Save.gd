extends Node

var savePath = "res://saveFile.tfg" #funktioniert nicht wenn man exportiert auf smartphones, hier muss man user eingeben damit es funktioniert
var config = ConfigFile.new()
var LoadResponse = config.load(savePath)

#loads the values into the file
func saveData(section, key, value):
	config.set_value(section, key, value)
	config.save(savePath)

#loads the values out of the file
func loadData(section, key, default):
	return config.get_value(section ,key, default)
