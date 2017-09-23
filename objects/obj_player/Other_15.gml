/// @description State: CLIMBING

var h_input = 0
var v_input = 0;

if obj_game_manager.input_allowed {
	h_input = keyboard_check(vk_right) - keyboard_check(vk_left);
	v_input = keyboard_check(vk_up) - keyboard_check(vk_down);
}

if (sprite_index != asset_get_index("spr_player_climb")) {
	sprite_index = asset_get_index("spr_player_climb");
	velocity[0] = 0;
}
	
if (v_input == 0) {
	image_speed = 0;
	velocity[1] = 0;
} else {
	image_speed = 1;
}

if (h_input == 0) {
	velocity[0] = 0;
} else {
	velocity[0] = clamp(velocity[0] + h_input * acceleration[0], -max_h_speed, max_h_speed);
}
	
velocity[1] = clamp(velocity[1] - v_input, -max_v_speed, max_v_speed);

if (not place_meeting(x, y, obj_collidable_ladder) or 
	(state == CLIMBING and place_meeting(x, y + 10, obj_collidable))) { // To IDLE
	state = IDLE;
}
