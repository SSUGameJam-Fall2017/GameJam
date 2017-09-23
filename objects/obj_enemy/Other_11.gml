//chasing
player_x = obj_player.x
player_y = obj_player.y
if (point_distance(x,y,player_x,player_y) < 110){
	if(mode==1){
		path_end()
	}
	
	//mp_potential_step_object(player_x,player_y-3,3.5,obj_collidable)
	if (!place_meeting(x,y+vps,obj_collidable)){
		y += grav
	}
	
	if (x < player_x){
		hps = 2
	}else{
		hps = -2
	}
	if (point_distance(x,y,player_x,player_y) < 32){
		hps = 0	
		enemy_state = e_state.ATTACK
	}
	
	if (place_meeting(x + hps, y, obj_collidable)) {
		while (not place_meeting(x + sign(hps), y, obj_collidable)) {
			x += sign(hps);
		}
	}

	x = x + hps
	if (place_meeting(x, y + 10, obj_collidable)) {
		while (not place_meeting(x, y + 1, obj_collidable)) {
			y += 1;
		}
	}
}else if (path_index != enemy_path){
	enemy_state = e_state.RETURN
	
}
