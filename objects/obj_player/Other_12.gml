/// @description State: JUMPING

if (sprite_index != asset_get_index("spr_player_jump")) {
	sprite_index = asset_get_index("spr_player_jump");
	image_index = 0;
}

velocity[1] = -jump_height;

state = FALLING;
