/// @description State: ATTACKING

if (image_index > 17) {
	state = IDLE;
} else {
	if (sprite_index != asset_get_index("spr_skeleton_attack")) {
		sprite_index = asset_get_index("spr_skeleton_attack");
		image_index = 0;
	}
}
