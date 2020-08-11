extends Node2D

onready var admob = $Admob

func _ready():
	admob.load_banner()
	admob.load_interstitial()
	admob.load_rewarded_video()
	$Button_AD/showBanner.connect("pressed", self, "showBanner")
	$Button_AD/showInter.connect("pressed", self, "showInter")
	$Button_AD/showV.connect("pressed", self, "showV")
	$Admob.connect("banner_loaded", self, "enableBtnBanner")
	$Admob.connect("interstitial_loaded", self, "enableBtnInter")
	$Admob.connect("rewarded_video_loaded", self, "enableBtnVideo")
	yield(get_tree().create_timer(10.1), "timeout")
	#$Admob.show_interstitial()
	pass


func showBanner():
	print("show banner")
	admob.show_banner()
	pass
func showInter():
	print("show intersis")
	admob.show_interstitial()
	pass
func showV():
	print("show video")
	admob.show_rewarded_video()
	pass

func enableBtnBanner():
	$Button_AD/showBanner.disabled = false
	pass

func enableBtnInter():
	$Button_AD/showInter.disabled = false
	pass
func enableBtnVideo():
	$Button_AD/showV.disabled = false
	pass
