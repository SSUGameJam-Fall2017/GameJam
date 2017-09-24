//attack

prev_img_scale = image_xscale
player_x = obj_enemy.x
player_y = obj_enemy.y
if (place_meeting(x,y,obj_player)){
		hps = 0	
		obj_player.captured-=1
		if (obj_player.captured <= 0){
			obj_player.state = obj_player.DED	
		}		
		image_blend = blend
}
else{
	mode = 0
	obj_player.captured = 100
	enemy_state = e_state.CHASE
}