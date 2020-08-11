extends Node2D

var scene_instance : Node2D

var ghost = preload("res://Current/Scenes/Mobs/ghost_base/ghost.tscn")
var ghost_mush_red = preload("res://Current/Scenes/Mobs/ghost_mush/ghost_mush_red.tscn")
var ghost_mush_green = preload("res://Current/Scenes/Mobs/ghost_mush/ghost_mush_green.tscn")
var ghost_mush_purple = preload("res://Current/Scenes/Mobs/ghost_mush/ghost_mush_purple.tscn")
var ghost_pumpkin = preload("res://Current/Scenes/Mobs/ghost_pumpkin/ghost_pumpkin.tscn")
var ghost_ball = preload("res://Current/Scenes/Mobs/ghost_base/ghost_ball.tscn")
var ghost_watermelon = preload("res://Current/Scenes/Mobs/ghost_watermelon/ghost_watermelon.tscn")
export(Array, int) var array = [1,2,3,4,5,6]   
var scene = null 
var array_ghost = []
func _ready():
	probability_ghost(1,3)
	probability_ghost(2,2)
	probability_ghost(3,1)
	probability_ghost(4,4)
	probability_ghost(5,4)
	probability_ghost(6,4)
	print(array_ghost)
func _process(delta):
#	for n in range(7):
#		array2 += array2
#		print (n)
	if !is_instance_valid(scene_instance):
		if !is_instance_valid(scene_instance):
			randomize()
			var choice = array_ghost[randi()%array.size()]
			if choice == 1:
				scene = ghost
			elif choice == 2:
				scene = ghost_mush_red
			elif choice == 3:
				scene = ghost_mush_green
			elif choice == 4:
				scene = ghost_mush_purple
			elif choice == 5:
				scene = ghost_pumpkin
			elif choice == 6:
				scene = ghost_watermelon
			scene_instance = scene.instance()
			yield(get_tree().create_timer(0.5), "timeout")
			if is_instance_valid(scene_instance):
				add_child(scene_instance)
				print("impri")
				
func probability_ghost(value,times):
	var value_to_add = [value]
	while times > 0:
		array_ghost += value_to_add
		times -= 1


