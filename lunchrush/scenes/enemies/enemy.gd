extends Node2D

@export var enemy_data: EnemyData

signal hp_changed

var max_hp: int
var current_hp: int:
	set(value):
		current_hp = clamp(value, 0, max_hp)
		hp_changed.emit(current_hp)

func _ready():
	if enemy_data:
		# TODO - Apply a max HP modifier based on the current wave
		max_hp = enemy_data.base_hp
		current_hp = max_hp
		

func take_damage(damage_amount: int):
	self.current_hp -= damage_amount
	
	if (self.current_hp == 0):
		print('enemy dies')
