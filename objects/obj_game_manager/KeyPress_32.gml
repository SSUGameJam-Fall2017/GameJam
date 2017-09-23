/// @description Start game/Advance Dialogue

if start_menu {
	start_menu = false;
	instance_activate_all();
} else if in_dialogue {
	alarm[0] = 1;
}
