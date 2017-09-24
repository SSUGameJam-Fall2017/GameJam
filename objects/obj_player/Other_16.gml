/// @description DED

if (sprite_index != asset_get_index("spr_player_ded")) {
	sprite_index = asset_get_index("spr_player_ded");
	image_speed = 0;
}

with obj_game_manager {
	event_user(1);
}
