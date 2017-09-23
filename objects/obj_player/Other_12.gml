/// @description State: JUMPING

if (sprite_index != asset_get_index("spr_player_jump")) {
	sprite_index = asset_get_index("spr_player_jump");
	image_index = 0;
}

if (not place_meeting(x, y + acceleration[1], obj_collidable)) {
	velocity[1] += acceleration[1];
}

velocity[1] = -jump_height;

state = FALLING;
