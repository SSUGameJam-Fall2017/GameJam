/// @description State: ATTACKING

if (image_index > 2) {
	state = IDLE;
} else {
	if (sprite_index != asset_get_index("spr_player_attack")) {
		sprite_index = asset_get_index("spr_player_attack");
		image_index = 0;
		velocity = [0, 0]
	}
	
	if (not place_meeting(x, y + acceleration[1], obj_collidable)) {
		velocity[1] += acceleration[1];
	}
}
