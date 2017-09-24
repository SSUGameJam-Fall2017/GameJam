/// @description Insert description here
// You can write your code in this editor
// idle
player_x = obj_player.x
player_y = obj_player.y
if( abs(angle_difference(180, direction)) < 90){
image_xscale = 1;
}else{
image_xscale = -1;
}
if (point_distance(x,y,player_x,player_y) < 110){ 
	enemy_state = e_state.CHASE
}
else if(place_meeting(x,y,obj_player)){
	enemy_state = e_state.ATTACK
}

if (!place_meeting(x,y+vps,obj_collidable)){
		y += grav
	}
	
	if (place_meeting(x, y + 10, obj_collidable)) {
		while (not place_meeting(x, y + 1, obj_collidable)) {
			y += 1;
		}
	}
