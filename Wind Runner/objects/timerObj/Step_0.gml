if(countdown <= 10){
	draw_set_color(#FF0000)
}else{
	draw_set_color(#FFFFFF)
}
if(countdown <= 0){
	countdown = 0
	instance_destroy(playerObj)
}