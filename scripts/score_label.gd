extends Label

@onready var game_manager: Node = %GameManager

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	game_manager.score_changed.connect(_on_score_changed)
	
	text = "Score: " + str(game_manager.score)

# Called when score changes from GameManager
func _on_score_changed(new_score) -> void:
	text = "Score: " + str(new_score)
