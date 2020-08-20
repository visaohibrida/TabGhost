extends Node2D

var scene_instance : Node2D

var ghost = preload("res://Current/Scenes/Mobs/ghost_base/ghost.tscn")
var ghost_mush_red = preload("res://Current/Scenes/Mobs/ghost_mush/ghost_mush_red.tscn")
var ghost_mush_green = preload("res://Current/Scenes/Mobs/ghost_mush/ghost_mush_green.tscn")
var ghost_mush_purple = preload("res://Current/Scenes/Mobs/ghost_mush/ghost_mush_purple.tscn")
var ghost_pumpkin = preload("res://Current/Scenes/Mobs/ghost_pumpkin/ghost_pumpkin.tscn")
var ghost_ball = preload("res://Current/Scenes/Mobs/ghost_base/ghost_ball.tscn")
var ghost_watermelon = preload("res://Current/Scenes/Mobs/ghost_watermelon/ghost_watermelon.tscn")
var scene = null 
var array_ghost = ["0"]
func _ready():
	probability_ghost("ghost",1)
	probability_ghost("ghost_mush_red",1)
	probability_ghost("ghost_mush_green",1)
	probability_ghost("ghost_mush_purple",1)
	probability_ghost("ghost_pumpkin",1)
	probability_ghost("ghost_watermelon",1)
	print(array_ghost)
func _process(delta):
	random_ghost()
	
func random_ghost():
	yield(get_tree().create_timer(0.5), "timeout")
	if !is_instance_valid(scene_instance) and G.spawn_up:
		randomize()
		var choice = array_ghost[randi()%array_ghost.size()]
		if choice == "ghost":
			scene = ghost
			G.hp_color = "white"
		elif choice == "ghost_mush_red":
			scene = ghost_mush_red
			G.hp_color = "red"
		elif choice == "ghost_mush_green":
			scene = ghost_mush_green
			G.hp_color = "green"
		elif choice == "ghost_mush_purple":
			scene = ghost_mush_purple
			G.hp_color = "purple"
		elif choice == "ghost_pumpkin":
			scene = ghost_pumpkin
			G.hp_color = "orange"
		elif choice == "ghost_watermelon":
			scene = ghost_watermelon
			G.hp_color = "green"
		scene_instance = scene.instance()
		yield(get_tree().create_timer(0.5), "timeout")
		add_child(scene_instance)
			
func probability_ghost(value,times):
	var value_to_add = [value]
	while times > 0:
		array_ghost += value_to_add
		times -= 1


