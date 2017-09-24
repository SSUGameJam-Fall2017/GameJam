/// @description Start game/Advance Dialogue

if start_menu {
	start_menu = false;
	instance_activate_all();
	queue_all_dialogue(obj_story_manager.WAKE_UP);
} else if in_dialogue {
	alarm[0] = 3;
}
