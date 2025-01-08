extends Base_enemy_ui

@onready var purple_blob: Enemy = $PurpleBlob
var Stats:EnemyStats

func _ready():
	var Stats:EnemyStats = purple_blob.Stats
	pass

func _physics_process(delta: float) -> void:
	pass
