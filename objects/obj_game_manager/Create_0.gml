/// @description Initialize Game Manager

start_menu = true;
start_sprite = noone;
is_paused = false;
in_dialogue = false;
input_allowed = true;

dialogue_queue = ds_queue_create();
dialogue_time = room_speed * 3;
dialogue_obj = noone;
alarm[0] = 1;

instance_deactivate_all(true);
