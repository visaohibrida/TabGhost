extends Node

var player_level = 1.0
var monsters_killed = 0
var monsters_lvl = player_level
var damage = 50
var enemy = 1
var enemy_button = true
var version_git = 0
var version_app = 0
var spawn_up = false
var hp_color = "white"
var tabs = {
	"slot1":{
		"title": "Toldier",
		"description": "This is the end",
		"level": 1,
		"damage": 1,
		"isOff": true,
		"off": 20,
		"price": 10
	},
	"slot2":{
		"title": "Cannonner",
		"description": "Boom!",
		"level": 1,
		"damage": 1,
		"isOff": true,
		"off": 20,
		"price": 10
	},
	"slot3":{
		"title": "Ninja",
		"description": "A stealth ninja",
		"level": 1,
		"damage": 1,
		"isOff": true,
		"off": 20,
		"price": 10
	},
	"slot4":{
		"title": "Scytheman",
		"description": "This is the end",
		"level": 1,
		"damage": 1,
		"isOff": true,
		"off": 20,
		"price": 10
	},
	"slot5":{
		"title": "Knight",
		"description": "Fight!",
		"level": 1,
		"damage": 1,
		"isOff": true,
		"off": 20,
		"price": 10
	},
}

var soldier = "2"

