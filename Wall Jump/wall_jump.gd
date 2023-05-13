	if Input.is_action_just_pressed("JUMP"):
		if is_on_floor():
			num_of_jump = 0
			velocity.y = JUMPFORCE
		
		
		if is_on_wall() && Input.is_action_pressed("RIGHT"):
			
			if num_of_jump < 6:
				num_of_jump = num_of_jump + 1
				
				
				if wall_jump == true:
					if num_of_jump == 1:
						velocity.y = -600
					elif num_of_jump == 2:
						velocity.y = -620
					elif num_of_jump == 3:
						velocity.y = -600
					elif num_of_jump == 4:
						velocity.y = -600
					elif num_of_jump == 5:
						velocity.y = -620
					elif num_of_jump == 6:
						velocity.y = -600
					elif num_of_jump == 7:
						velocity.y = -600
					else:
						pass
						
		if is_on_wall() && Input.is_action_pressed("LEFT"):
			
			if num_of_jump < 6:
				num_of_jump = num_of_jump + 1
				
				if wall_jump == true:
					if num_of_jump == 1:
						velocity.y = -600
					elif num_of_jump == 2:
						velocity.y = -620
					elif num_of_jump == 3:
						velocity.y = -600
					elif num_of_jump == 4:
						velocity.y = -600
					elif num_of_jump == 5:
						velocity.y = -620
					elif num_of_jump == 6:
						velocity.y = -600
					elif num_of_jump == 7:
						velocity.y = -600
					else:
						pass