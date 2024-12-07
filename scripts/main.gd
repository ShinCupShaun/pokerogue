extends Node2D

var AppID : String = "480"


func _init():
	OS.set_environment("SteamAppID", AppID)
	OS.set_environment("SteamGameID", AppID)


func _ready():
	Steam.steamInit()
	var isRunning = Steam.isSteamRunning()
	
	if !isRunning:
		print("ERROR: Steam not running.")
		return
	
	print("Steam is running.")
	
	var steam_id = Steam.getSteamID()
	var steam_name = Steam.getFriendPersonaName(steam_id)
	print("Username: %s" % steam_name)


func _process(delta):
	pass
