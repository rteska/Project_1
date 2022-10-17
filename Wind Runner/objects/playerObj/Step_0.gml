/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_left) and !instance_place(x-move_speed,y,collisionBlockObj)) {
	sprite_index = playerRun
	x += -move_speed
	image_xscale = -1
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed,y,collisionBlockObj)) {
	sprite_index = playerRun
	x += move_speed
	image_xscale = 1
}
if(instance_place(x,y+1,collisionBlockObj)){
	sprite_index = playerIdle
	gravity = 0
}
else{ sprite_index = playerFall
	gravity = 0.5
}
if (keyboard_check(vk_up)){
	sprite_index = playerJump
	if(instance_place(x,y+1,collisionBlockObj)){
		vspeed = jump_height
	}
}
