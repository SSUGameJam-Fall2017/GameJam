/// @description Dialogue Alarm

instance_destroy(dialogue_obj);
dialogue_obj = noone;

if ds_queue_size(dialogue_queue) > 0 {
	in_dialogue = true;
	input_allowed = false;
	dialogue_obj = instance_create_depth(0, display_get_gui_height(), 1000, obj_dialogue);
	dialogue_obj.text = ds_queue_dequeue(dialogue_queue);
	alarm[0] = dialogue_time;
} else {
	in_dialogue = false;
	input_allowed = true;
	alarm[0] = 1;
}