/// @description Insert description here
// You can write your code in this editor
player_x = obj_player.x
player_y = obj_player.y


if (!place_meeting(x,y+vps,obj_collidable)){
	vps += grav
}

if (point_distance(x,y,player_x,player_y) < 200)
{
	path_end()
	//mp_potential_step_object(player_x,player_y-3,3.5,obj_collidable)
	if (!place_meeting(x,y+vps,obj_collidable)){
		y += grav
	}
	
	if (x < player_x){
		hps = 2
	}else{
		hps = -2
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
	
}else if (path_index != enemy_path ){
	//mp_potential_step_object(start_x,start_y,3,obj_collidable);
	if (!place_meeting(x,y+vps,obj_collidable)){
		y += grav
	}
	
	path_x = path_get_x(enemy_path,0)
	if (x < path_x){
		hps = 2
	}
	else{
		hps = -2
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
		path_start(enemy_path, 3, path_action_reverse, false)
	
	}

}


