extends Node

@onready var MoneyLabel: Label = $HBoxContainer/TextureRect/HBoxContainer/MarginContainer/MoneyLabel
@onready var HealthLabel: Label = $HBoxContainer/TextureRect2/HBoxContainer/MarginContainer/HealthLabel

func _ready():
	updateLabels()

func updateLabels():
	updateLabelMoney()
	updateLabelHealth()

func updateLabelMoney():
	MoneyLabel.text = "$" + str(GameStateManager.current_money)

func updateLabelHealth():
	HealthLabel.text = str(GameStateManager.current_hp) + "/" + str(GameStateManager.max_hp)
