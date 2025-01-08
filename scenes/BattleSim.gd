extends Node2D

@export var enemy:Base_enemy_ui = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	set_player()
	set_enemies()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_health(progress_bar, health, max_health):
	progress_bar.value = health
	progress_bar.max_value = max_health

func set_player():
	set_health($ActionsPanel/ProgressBar3, 100, 100)
	$ActionsPanel/ProgressBar3.get_node("Label2").text = "100"
	
func set_enemies():
	set_health($VBoxContainer/ProgressBar, enemy.purple_blob.Stats.health, enemy.purple_blob.Stats.health)
	#$VBoxContainer/TextureRect.texture = enemy.texture
