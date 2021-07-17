extends Area2D

const MOVE_SPEED = 200.0
const SCREEN_WIDTH = 320


func _process(delta):
	position += Vector2(MOVE_SPEED * delta, 0)
	if position.x >SCREEN_WIDTH + 10:
		queue_free()

func _on_Bala_area_entered(area):
	if area.is_in_group("asteroide"):
		queue_free()
