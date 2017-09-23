/// @description State: WALKING

var h_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var v_input = keyboard_check(vk_up) - keyboard_check(vk_down);
var space_input = keyboard_check(vk_space);

if (h_input == 0) { // To IDLE
	state = IDLE;
} else if (v_input != 0) { // To JUMPING
	state = JUMPING;
} else if (not place_meeting(x, y + acceleration[1], obj_collidable)) { // To FALLING
	state = FALLING;
} else if (space_input != 0) { // To ATTACKING
	state = ATTACKING;
} else {
	if (sprite_index != asset_get_index("spr_skeleton_walk")) {
		sprite_index = asset_get_index("spr_skeleton_walk");
	}

	facing = ((h_input > 0) * 2) - 1;
	velocity[0] = clamp(velocity[0] + h_input * acceleration[0], -max_h_speed, max_h_speed);
}
