/// @description Insert description here
// You can write your code in this editor
if(not global.game_over){ //Game is going
	if(room != rm_win){
		if(not keyboard_check(vk_left) and not keyboard_check(vk_right) and not keyboard_check(vk_up)){ //Checks to see if the player is moving at all
		sprite_index = spr_playeridle
	
		}else{
			if(keyboard_check(vk_left) and not instance_place(x-10, y, obj_block)){ //Going left
				x += -move_speed
				sprite_index = spr_playerrun
				image_xscale = -0.4
				image_yscale = 0.4
			}
	
			if(keyboard_check(vk_right) and not instance_place(x+10, y, obj_block)){ //Going right
				x += move_speed
				sprite_index = spr_playerrun
				image_yscale = 0.4
				image_xscale = 0.4
			}
	
			if(instance_place(x, y+5, obj_block)){ //Player is on ground
				gravity = 0
			}else{
				sprite_index = spr_playerjump
				gravity = 0.5
			}
	
			if(keyboard_check(vk_up)){ //Up key is hit
				if(instance_place(x, y+5, obj_block)){ //Player is standing on ground
					vspeed = jump_height
				}
			}
	
			if(vspeed > 12){
				vspeed = 12
			}
	
		}

		if(keyboard_check_pressed(vk_space)){ //If player attacking
			instance_create_layer(x, y - 4, "Player", obj_laser)
			sprite_index = spr_playerattack	
		}
	}
	
}else{ //Game over
	room_goto(rm_lose)
	instance_destroy()
}






