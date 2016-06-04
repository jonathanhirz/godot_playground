
extends Sprite

var movement_speed = 500

func _ready():
	
	#register for update
	self.set_process(true)
	
	#translate to center of the parent, in this case, the viewport
	var new_pos = Vector2(self.get_parent().get_rect().size.width/2, self.get_parent().get_rect().size.height/2)
	self.set_pos(new_pos)
	
	#rotate by 90 degrees set_rot takes radians, so convert with built in function
	#∂self.set_rot(deg2rad(90))
	
func _process(dt):
	
	#rotate sprite
	var new_rot = self.get_rot()
	new_rot -= deg2rad(45) * dt
	self.set_rot(new_rot)
	
	#move sprite
	if(Input.is_action_pressed("UP")):
		var cur_pos = self.get_pos()
		cur_pos.y -= movement_speed * dt
		self.set_pos(cur_pos)
	if(Input.is_action_pressed("DOWN")):
		var cur_pos = self.get_pos()
		cur_pos.y += movement_speed * dt
		self.set_pos(cur_pos)
	if(Input.is_action_pressed("LEFT")):
		var cur_pos = self.get_pos()
		cur_pos.x -= movement_speed * dt
		self.set_pos(cur_pos)
	if(Input.is_action_pressed("RIGHT")):
		var cur_pos = self.get_pos()
		cur_pos.x += movement_speed * dt
		self.set_pos(cur_pos)
	