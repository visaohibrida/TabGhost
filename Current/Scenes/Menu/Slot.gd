extends Control
var price = 100
var coin_ico = preload("res://Current/Assets/Images/coin.png")
var att_button = false
func _ready():
	$Button/Buy.text = "Buy\n"
	$Button/Price.text = str(price)
	$Title.text = "" + str(G.tabs)
	$Subtitle.text = "A powerfull soldier"
	$Level.text = "Level: 1"
	$Damage.text = "Damage: 1"
	$OFF/Percent.text = "50" + "$"
	
func _process(delta):
	$Title.text = "" + str(G.tabs["slot1"]["title"])
