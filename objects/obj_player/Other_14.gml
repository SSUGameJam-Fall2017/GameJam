/// @description State: ATTACKING

if (image_index > 2) {
	state = IDLE;
} else {
	if (collision_line(x + (sprite_width/2),y,x - (sprite_width/2),y,obj_enemy,false,false)){
		obj_enemy.enemy_state = e_state.HURT	
	}
	if (sprite_index != asset_get_index("spr_player_attack_bat") && bat==true) {
		sprite_index = asset_get_index("spr_player_attack_bat");
		image_index = 0;
		velocity = [0, 0]
	}
	
	if (not place_meeting(x, y + acceleration[1], obj_collidable)) {
		velocity[1] += acceleration[1];
	}
}
