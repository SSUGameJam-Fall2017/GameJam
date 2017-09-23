/// @description State: ATTACKING

if (image_index > 2) {
	state = IDLE;
} else {
	if (sprite_index != asset_get_index("spr_player_attack")) {
		sprite_index = asset_get_index("spr_player_attack");
		image_index = 0;
	}
}
