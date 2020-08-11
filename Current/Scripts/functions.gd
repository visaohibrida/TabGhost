extends Node

func _ready():
	pass
#random number
func r(smaller, bigger): 
	return randi() % bigger + smaller

func pickrando():
	var i = rand_range(0, 1)
	if i < 0.2:
		print("0,2")
	elif i < 0.8:
		print("0,8")
func t(time):
	yield(get_tree().create_timer(time), "timeout")
