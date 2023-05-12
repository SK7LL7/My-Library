const Up = Vector2(0, -1)
const FLAP = 200
const MAXFALLSPEED = 200
const GRAVITY = 10

var motion = Vector2()
var Wall = preload("res://Scenes/Wallnode.tscn")
var score = 0

func _physics_process(delta):
	motion.y += GRAVITY
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
	if Input.is_action_just_pressed("Jump"):
		motion.y = -FLAP
		
	motion = move_and_slide(motion, Up)
	
	get_parent().get_parent().get_node("CanvasLayer/RichTextLabel").text = str(score)
	


func Wall_reset():
	var wall_instance = Wall.instance()
	wall_instance.position = Vector2(450,rand_range(-60,60))
	get_parent().call_deferred("add_child",wall_instance)
	
	#Resseter Area2D
	
func _on_Resseter_body_entered(body):
	if body.name == "Walls":
		body.queue_free()
		Wall_reset()


#Dectect Area2D

func _on_Detect_area_entered(area):
	if area.name == "PointArea":
		score = score + 1


func _on_Detect_body_entered(body):
	if body.name == "Walls":
		get_tree().reload_current_scene()


#Static Body (WALLS)

func _physics_process(delta):
	position += Vector2(-2,0)