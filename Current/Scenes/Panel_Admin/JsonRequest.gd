extends Control
var check_version = {}
var tab_power = {}
var tab_coin = {}
var tab_ad = {}
var tab_army = {}
var tab
var temp = false
func _on_Button_pressed():
	$HTTP_Army.request("https://visaohibrida.github.io/tapmonster/j/Army.json")
#	$HTTP_Power.request("https://visaohibrida.github.io/tapmonster/j/Power.json")
#	$HTTP_Coin.request("https://visaohibrida.github.io/tapmonster/j/Coin.json")
#	$HTTP_AD.request("https://visaohibrida.github.io/tapmonster/j/AD.json")
func _on_HTTP_Army_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	tab_army = json.result
	G.tabs = tab_army
	
func _on_HTTP_Power_request_completed(result, response_code, headers, body):
#	var json = JSON.parse(body.get_string_from_utf8())
#	tab_army = json.result
#	G.tabs = tab_army
	pass
	
func _on_HTTP_Coin_request_completed(result, response_code, headers, body):
#	var json = JSON.parse(body.get_string_from_utf8())
#	tab_army = json.result
#	G.tabs = tab_army
	pass
	
func _on_HTTP_AD_request_completed(result, response_code, headers, body):
#	var json = JSON.parse(body.get_string_from_utf8())
#	tab_army = json.result
#	G.tabs = tab_army
	pass
	
func _ready():
	temp = false
func _process(delta):
	if temp == true:
		temp = false
	pass

 
