if (path_index != enemy_path){

	if (!place_meeting(x,y+vps,obj_collidable)){
		y += grav
	}
	
	path_x_begin = path_get_x(en_path,0)
	path_x_end = path_get_x(en_path,1)
	if (x < path_x_begin){
		hps = 2
		image_xscale = -1
	
	}else{
		hps = -2
		image_xscale = 1
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
	
	if (abs(x - start_x) < 2 && abs(y - start_y) < 2){
		path_start(en_path, 3, path_action_reverse,false);
		mode = 1
		enemy_state = e_state.IDLE
	
	}
	show_debug_message("Enemy X" + string(x))
	show_debug_message("Player X" + string(path_x_begin))

}
