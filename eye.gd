extends Area2D

func _on_body_entered(body):
	global.eyes_collected += 1
	get_parent().queue_free()
