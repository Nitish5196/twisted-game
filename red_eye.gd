extends Area2D

signal eye_collected
# Called when the node enters the scene tree for the first time.
func _on_body_entered(body):
	if body.name == "player":
		eye_collected.emit()
		$AudioStreamPlayer2D.play()
		$Sprite2D.hide()
		$CollisionShape2D.set_deferred("disabled", true)
		await $AudioStreamPlayer2D.finished
		queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
