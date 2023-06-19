extends Node2D



func save(id):
	var packedscene = PackedScene.new()
	packedscene.pack(get_tree().get_current_scene())
	var path = "res://save_game" + str(id) + ".tscn"
	var _dummy = ResourceSaver.save(path, packedscene)

#Make a button and call pressed()
func _on_save_pressed():
	save(1)



#Make a button and call pressed()
func _on_load_pressed():
	loadsave(1)
