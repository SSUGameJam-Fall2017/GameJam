/// @description State: WALKING

var h_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var v_input = keyboard_check(vk_up) - keyboard_check(vk_down);
var space_input = keyboard_check(vk_space);

if obj_game_manager.input_allowed {
	h_input = keyboard_check(vk_right) - keyboard_check(vk_left);
	v_input = keyboard_check(vk_up) - keyboard_check(vk_down);
	space_input = keyboard_check(vk_space);
}

if (h_input == 0) { // To IDLE
	state = IDLE;
} else if (v_input > 0) { 
	if (place_meeting(x, y, obj_door)) { // To Connected Room
		door = collision_line(x - sprite_width / 2, y - sprite_height / 2, 
			x + sprite_width / 2, y - sprite_height / 2, obj_door, false, false);
		if door and not door.is_locked {
			transition_obj = instance_create_depth(0, 0, 1000, obj_transition);
			transition_obj.room_index = door.connected_room;
			transition_obj.destination_x = door.destination_x;
			transition_obj.destination_y = door.destination_y;
			with (transition_obj) {
				event_user(0);
			}
		}
	} else if (place_meeting(x, y, obj_collidable_ladder)) { // To CLIMBING
		state = CLIMBING;
	} else { // To JUMPING
		state = JUMPING;
	}
} else if (not place_meeting(x, y + acceleration[1], obj_collidable)) { // To FALLING
	state = FALLING;
} else if (space_input != 0) { // To ATTACKING
	state = ATTACKING;
} else {
	if (sprite_index != asset_get_index("spr_player_walk")) {
		sprite_index = asset_get_index("spr_player_walk");
	}
	if (not place_meeting(x, y + acceleration[1], obj_collidable)) {
		velocity[1] += acceleration[1];
	}
	facing = ((h_input > 0) * 2) - 1;
	velocity[0] = clamp(velocity[0] + h_input * acceleration[0], -max_h_speed, max_h_speed);
}
