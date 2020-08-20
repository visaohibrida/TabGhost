extends Node2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	$Nav_Control/player_level.text = str(int(G.player_level))
