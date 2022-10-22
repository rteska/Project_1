/// @description Insert description here
// You can write your code in this editor

if(count_down <= 10){
	draw_set_color(#FF0000)
}else{
	draw_set_color(#FFFFFF)
}
if(count_down <= 0){
	global.game_over = true
	count_down = 0
}

if(room = rm_win){
	instance_destroy()
}

