/// @description Update

event_user(state);
show_debug_message(state);

if (not place_meeting(x, y + acceleration[1], obj_collidable)) {
	velocity[1] += acceleration[1];
}

move(velocity, 0);
