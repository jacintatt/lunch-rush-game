extends Node

signal hp_changed(hp)

var max_hp: int = 100
var current_hp: int:
	set(value):
		current_hp = clamp(value, 0, max_hp)
		hp_changed.emit(current_hp)

var current_money: int = 100

func _ready():
	current_hp = max_hp
	
func take_damage(damage_amount: int):
	self.current_hp -= damage_amount
