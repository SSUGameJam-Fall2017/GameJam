/// @description State: FALLING

if (place_meeting(x, y + acceleration[1], obj_collidable)) {
	image_speed = 1;
	image_index = 0;
	if (velocity[0] == 0) {
		state = IDLE;
	} else {
		state = WALKING;
	}
} else {
	if (sprite_index != asset_get_index("spr_skeleton_walk")) {
		sprite_index = asset_get_index("spr_skeleton_walk");
	}
	image_index = 5;
	image_speed = 0;
	
	var h_input = keyboard_check(vk_right) - keyboard_check(vk_left);
	
	if (h_input != 0) {
		facing = ((h_input > 0) * 2) - 1;
		velocity[0] = clamp(velocity[0] + h_input * acceleration[0], -max_h_speed, max_h_speed);
	} else {
		velocity[0] = 0;
	}
}
