extends Area2D

const MOVE_SPEED = 100.0
var ExplosionEscenas = preload("res://Escenas/Explosion.tscn")

func _process(delta):
	position -= Vector2(MOVE_SPEED * delta, 0)
	if position.x <-100:
		queue_free()




func _on_Asteroide1_area_entered(area):
	if area.is_in_group ("Bala"):
		var explosion_instance = ExplosionEscenas.instance()
		explosion_instance.position = position
		get_parent().add_child(explosion_instance)
		queue_free()
