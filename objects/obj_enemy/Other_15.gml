//hurt
if (hp<=0){
	enemy_state = e_state.DEATH
}
else{
	image_blend = make_colour_hsv(255,255,128)
	if (obj_player.direction){
		hps = 4
	}
	else{
		hps = -4
	}
	
	hp-=1
	enemy_state = e_state.ATTACK
	if (place_meeting(x + hps, y, obj_collidable)) {
		while (not place_meeting(x + sign(hps), y, obj_collidable)) {
			x += sign(hps);
		}
	}
	x = x + hps
}


