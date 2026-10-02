extends Label

func _process(_delta):
	text = "Eyes: " + str(global.eyes_collected) + "/" + str(global.TOTAL_EYES)
