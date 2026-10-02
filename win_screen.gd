extends Node2D

@onready var texture_rect = $TextureRect
@onready var label = $Label
@onready var play_button = $PlayButton 


var img1 = preload("res://download.jpg") 
var img2 = preload("res://eije.jpg") 

func _ready():
   
	texture_rect.texture = img1
	label.text = "Congratulations you escaped the maze,\nyou're finally free now...\nwait ARE YOU?"
	play_button.visible = false

 
	await get_tree().create_timer(4.0).timeout

	
	texture_rect.texture = img2
	label.text = "Play again v2 coming soon!"
	play_button.visible = true 
func _on_play_button_pressed():
	global.eyes_collected = 0
	get_tree().change_scene_to_file("res://title.tscn")
