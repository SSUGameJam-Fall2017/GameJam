//hurt
if (hp<=0){
	enemy_state = e_state.DEATH
	queue_dialogue(obj_story_manager.ENEMY_KNOCKED_OUT);
}
else{
	image_blend = make_colour_hsv(255,255,128)
	
	if(obj_player.facing==1){
		hps = 4
	}
	else if(obj_player.facing==-1){
		hps = -4
	}
	
	hp-=1
	if (place_meeting(x + hps, y, obj_collidable)) {
		while (not place_meeting(x + sign(hps), y, obj_collidable)) {
			x += sign(hps);
		}
	}
	x = x + hps
	enemy_state = e_state.ATTACK
}


