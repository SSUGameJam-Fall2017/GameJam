/// @description Update Door

if (place_meeting(x, y, obj_player) and state == CLOSED and not is_locked) {
	state = OPENING;
} else if (not place_meeting(x, y, obj_player) and state == OPEN) {
	state = CLOSING;
}


if state == CLOSED {
	image_index = 0;
	image_speed = 0;
} else if state == OPENING {
	image_speed = 1;
} else if state == OPEN {
	image_index = 3;
	image_speed = 0;
} else if state == CLOSING {
	image_speed = -1;
}
