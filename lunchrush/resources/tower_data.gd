class_name TowerData extends Resource

@export var sprite_sheet: SpriteFrames

@export var tower_name: String

@export var base_cost: int
@export var base_attack_radius: int
@export var base_attack_rate: int

@export var projectile_type: TowerProjectile
@export var projectile_count: int

@export var upgrades_from: TowerData
@export var upgrades_to: TowerData
