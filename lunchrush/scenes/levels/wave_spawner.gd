extends Node

@export var wave_data: Array[Dictionary] = [
	{
		"wave_number": 1,
		"enemies": [
			{
				"enemy_name_internal": "enemy_school_boy",
				"count": 1,
				"path": "Path1",
				"delay": 2
			}
		]
	}
]

var enemy_data = {
	"enemy_name_internal": load("res://scenes/enemies/enemy_school_boy.tres")
}

var enemy_scenes = {}

func _ready():
	# Convert this to loop when we add more enemies
	load_enemy_scenes(enemy_data.enemy_name_internal)

func load_enemy_scenes(enemy_data: EnemyData):
	var enemy_scene = preload("res://scenes/enemies/Enemy.tscn").instantiate()
	enemy_scene.enemy_data = enemy_data
	
	self.enemy_scenes[enemy_scene.enemy_data.name_internal] = enemy_scene
	
