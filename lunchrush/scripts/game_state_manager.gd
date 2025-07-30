extends Node

signal hp_changed(hp)
signal money_changed(money)
signal wave_changed(wave)

var max_hp: int = 100
var current_hp: int:
	set(value):
		current_hp = clamp(value, 0, max_hp)
		hp_changed.emit(current_hp)

var current_money: int = 100:
	set(value):
		money_changed.emit(current_money)
		
var current_wave: int = 0:
	set(value):
		wave_changed.emit(current_wave)

func _ready():
	current_hp = max_hp
