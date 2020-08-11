extends Node2D
onready var data = "testing ...."
onready var url  = "visaohibrida.w02nt.gcp.mongodb.net:27017"
func _ready():
	$BTN_Restart.connect("pressed", self, "restart_game")

func restart_game():
	get_tree().reload_current_scene()



func sends():
	var query = JSON.print(data)
	# Add 'Content-Type' header:
	var headers = ["Content-Type: application/json"]
	$HTTPRequest.request(url, headers, false, HTTPClient.METHOD_POST, query)
	pass
func _on_Button_pressed():
	sends()
	pass # Replace with function body.
