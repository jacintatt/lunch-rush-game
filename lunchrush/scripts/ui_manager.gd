extends Node

@onready var MoneyLabel: RichTextLabel = $HBoxContainer/SignMoney/MoneyLabel
@onready var HealthLabel: RichTextLabel = $HBoxContainer/SignHealth/HealthLabel

func _ready():
	updateLabels() 
	return

func updateLabels():
	updateLabelMoney()
	updateLabelHealth()

func updateLabelMoney():
	MoneyLabel.text = "$" + str(GameStateManager.current_money)

func updateLabelHealth():
	HealthLabel.text = str(GameStateManager.current_hp) + "/" + str(GameStateManager.max_hp)
