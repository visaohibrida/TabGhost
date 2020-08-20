extends KinematicBody2D

var hp = 100 * G.player_level
var bar_var = 100
var hp_max = G.player_level * 100
var ki = load("res://Current/Tres/GhostStatus.tres")
	
func _ready():
	ghost_level()
	$GhostStatus/ProgressBar.max_value = hp_max
	$GhostStatus/ProgressBar.value = hp
	$Button/Button.connect("button_up", self, "_on_Button_button_up")
	$Button/Button.connect("toggled", self, "_on_Button_toggled")
	pass
func _process(delta):
		if G.hp_color == "white":
			ki.set_bg_color("#ffffff")
		elif G.hp_color == "red":
			ki.set_bg_color("#c50000")
		elif G.hp_color == "green":
			ki.set_bg_color("#25d900")
		elif G.hp_color == "purple":
			ki.set_bg_color("#8300b8")
		elif G.hp_color == "orange":
			ki.set_bg_color("#d48b00")
		$GhostStatus/ProgressBar.value = hp
		if G.enemy_button == true:
			$Button/Button.disabled = false
		else:
			$Button/Button.disabled = true
		if hp > 0:
			return true
		else:
			G.monsters_killed += 1
			$Anim.play("dead")
			yield(get_tree().create_timer(0.1), "timeout")
			earn_xp()
			queue_free()		
func _on_Button_button_up():
	$Anim.play("default")

func _on_Button_toggled(button_pressed):
	$Anim.play("Pain")
	hp -= G.damage


func ghost_level():
	var capture_lvl_player = G.player_level
#	if capture_lvl_player == 1:
#		$GhostStatus/lvl.text = str(G.player_level)
#	if capture_lvl_player >= 2:
#		var temp = str(F.r((G.player_level),(G.player_level)))
#		$GhostStatus/lvl.text = temp
#		print(temp)
		
func earn_xp():
	print("you earn " + str(G.player_level * 0.3) + " XP")
	G.player_level += 0.11
	pass

func ghost_dead(ghost):
	if ghost == "ghost":
		print("You defeated a Ghost")
	elif ghost == "ghost_mush_red":
		print("You defeated a Ghost Mush Red")
	elif ghost == "ghost_mush_green":
		print("You defeated a Ghost Mush Green")	
	elif ghost == "ghost_mush_purple":
		print("You defeated a Ghost Mush Purple")	
	elif ghost == "ghost_pumpkin":
		print("You defeated a Ghost Pumpkin")	
	elif ghost == "ghost_watermelon":
		print("You defeated a Ghost Watermelon")	
	print("Ghost Dead")
