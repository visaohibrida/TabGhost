extends Node2D
var check = preload("res://Current/Scenes/Main/check_version.tscn")
var link = "https://visaohibrida.github.io/tapmonster/j/chk.json"
var link2 = "res://Current/Assets/json/json.json"
var verifica = false
var version = 0
var version_git_dic = {"version":{ "alfa":0}}
var version_git = version - 1
func _ready(): 
	check_version()
func _process(delta):
	if version_git > version and verifica:
		G.spawn_up = false
		get_tree().change_scene("res://Current/Scenes/Main/check_version.tscn")
	elif version == version_git:
		G.spawn_up = true
	else:
		G.spawn_up = false
	print(version_git)
	pass
func check_version():
	var http_request = HTTPRequest.new()
	http_request.timeout = 2
	add_child(http_request)
	http_request.connect("request_completed", self, "_http_request_completed")
	var error = http_request.request(link)
	if error != OK:
		push_error("An error occurred in the HTTP request.")
func _http_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	version_git_dic = json.result
	print(version_git_dic)
	if version_git_dic != null:
		version_git = version_git_dic["version"]["alpha"]
	else:
		get_tree().change_scene("res://Current/Scenes/Main/check_version.tscn")
	print(version_git_dic)
	verifica = true
	pass # Replace with function body.






func _on_Button2_pressed():
	CheckVersion.check_version()
	pass # Replace with function body.
