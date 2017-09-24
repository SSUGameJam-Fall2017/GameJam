//attack

prev_img_scale = image_xscale
player_x = obj_enemy.x
player_y = obj_enemy.y
if (place_meeting(x,y,obj_player)){
		hps = 0	
		timeCurrent = current_time
		if (timeCurrent - timeInit >= interval){
			obj_player.state = obj_player.DED	
			timeInit = timeCurrent
		}		
		image_blend = blend
}
else{
	mode = 0
	timeInit = current_time
	timeCurrent = current_time
	enemy_state = e_state.CHASE
}