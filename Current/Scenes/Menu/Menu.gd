extends KinematicBody2D

var icon = preload("res://Current/Assets/Images/MenuTab.png")
 
var speed = 300

var target = Vector2(3, 650)
var target_up = Vector2(3, 400)
var velocity = Vector2()
var menu_up = false

func _ready():
	yield(get_tree().create_timer(0.1), "timeout")
	$TabContainer2.set_current_tab(0)

func _process(delta):
	$TabContainer2.set_tab_icon(0, icon)
	$TabContainer2.set_tab_title ( 0, "" )
	$TabContainer2.set_tab_icon(1, icon)
	$TabContainer2.set_tab_title ( 1, "" )
	$TabContainer2.set_tab_icon(2, icon)
	$TabContainer2.set_tab_title ( 2, "" )
	$TabContainer2.set_tab_icon(3, icon)
	$TabContainer2.set_tab_title ( 3, "" )
	$TabContainer2.set_tab_icon(4, icon)
	$TabContainer2.set_tab_title ( 4, "" )
	
# MENU UP MG #
	if menu_up == false:
		G.enemy_button = true
		velocity = position.direction_to(target) * speed
		if position.distance_to(target) > 5:
			velocity = move_and_slide(velocity)
			
	if menu_up == true:
		G.enemy_button = false
		velocity = position.direction_to(target_up) * speed
		if position.distance_to(target_up) > 5:
			velocity = move_and_slide(velocity)

func _on_Button_pressed():
	if $ButtonU.is_pressed():
		menu_up = true
		$ButtonU.rect_position = Vector2( 506, -780 )
		$ButtonU.rect_size = Vector2( 15, 140 )
	else:
		menu_up = false
		$ButtonU.rect_position = Vector2( 506, -280 )
		$ButtonU.rect_size = Vector2( 15, 20 )
