extends Area2D

func _ready():

	visible = false
	$CollisionShape2D.set_deferred("disabled", true)
	body_entered.connect(_on_portal_entered)

func _process(_delta):
	
	if global.eyes_collected >= 5 and not visible:
		open_portal()

func open_portal():
	visible = true
	$CollisionShape2D.set_deferred("disabled", false)
	$PortalSound.play()

func _on_portal_entered(body):
	get_tree().call_deferred("change_scene_to_file", "res://win_screen.tscn")
	
