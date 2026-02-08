extends Node

signal score_changed(new_score) # notify others of score change
var score: int = 0

func add_point():
	score += 1
	score_changed.emit(score) # send out the new score
