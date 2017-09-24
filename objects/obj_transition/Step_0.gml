/// @description Update

alpha = clamp(alpha + (0.05 * delta), 0, 1);

if alpha >= 1 and delta > 0 {
	room_goto(room_index);
	delta = -1;
	obj_player.x = destination_x;
	obj_player.y = destination_y;
} else if alpha <= 0  and delta < 0 {
	instance_destroy();
}
