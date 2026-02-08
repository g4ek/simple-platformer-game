extends Area2D

@onready var timer: Timer = $Timer # referencing the Timer node below 


func _on_body_entered(body: Node2D) -> void:
	print("You Died!")
	timer.start() # begins the reload delay

func _on_timer_timeout() -> void: 
	get_tree().reload_current_scene() # reload current scenes in scene tree
