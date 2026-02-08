extends Area2D

@onready var timer: Timer = $Timer # referencing the Timer node below 


func _on_body_entered(body: Node2D) -> void:
	print("You Died!")
	Engine.time_scale = 0.5
	body.get_node('CollisionShape2D').queue_free()
	timer.start() # begins the reload delay

func _on_timer_timeout() -> void: 
	Engine.time_scale = 1
	get_tree().reload_current_scene() # reload current scenes in scene tree
