/// @description State: CLIMBING

var h_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var v_input = keyboard_check(vk_up) - keyboard_check(vk_down);

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
	
velocity[1] = clamp(velocity[1] - v_input, -max_v_speed, max_v_speed);

show_debug_message(string(place_meeting(x, y + 10, obj_collidable)));

if (not place_meeting(x, y, obj_collidable_ladder) or 
	(state == CLIMBING and place_meeting(x, y + 10, obj_collidable))) { // To IDLE
	state = IDLE;
}
