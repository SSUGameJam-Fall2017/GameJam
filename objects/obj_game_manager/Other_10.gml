/// @description Toggle Pause

if not is_paused {
	is_paused = true;
	instance_deactivate_all(true);
} else {
	is_paused = false;
	instance_activate_all();
}
