if vspeed > 10 then vspeed = 10
sprite_index = playerIdle
image_speed = .4
if (keyboard_check(vk_left) and !(instance_place(x - movementSpeed-5, y-10, wallObj) or instance_place(x - movementSpeed-5, y-10, wall2Obj))){
	x += -movementSpeed
	image_xscale = -1
	sprite_index = playerRun
}
if (keyboard_check(vk_right) and !(instance_place(x + movementSpeed+5, y-10, wallObj) or instance_place(x + movementSpeed+5, y-10, wall2Obj))){
	x += movementSpeed
	image_xscale = 1
	sprite_index = playerRun
}
if (instance_place(x, y+1, wallObj) or instance_place(x, y+1, wall2Obj)){
	gravity = 0
	if (keyboard_check(vk_up)){
	vspeed = jumpHeight
	audio_play_sound(jumpSound, 0, false)
		if (instance_place(x, y-5, wallObj) or instance_place(x, y-5, wall2Obj)){
		y-=1
		}
	}
}else{
	gravity = .75
	sprite_index = playerJump
}
if (instance_place(x, y-5, wallObj) or instance_place(x, y-5, wall2Obj)){
	vspeed = 0
}