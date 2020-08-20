extends Node2D

func _ready():
	pass # Replace with function body.

func check_version():
	var http_request = HTTPRequest.new()
	http_request.timeout = 2
	add_child(http_request)
	http_request.connect("request_completed", self, "_http_request_completed")
	var error = http_request.request("https://visaohibrida.github.io/tapmonster/j/chk.json")
	if error != OK:
		push_error("An error occurred in the HTTP request.")
func _http_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	var version = json.result
	if version == null:
		get_tree().change_scene("res://Current/Scenes/Main/check_version.tscn")


