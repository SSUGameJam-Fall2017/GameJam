/// @description Update

if game_over {
	alpha = clamp(alpha + 0.005, 0, 1);

	if alpha >= 1 {
		game_end();
	}
} else if captured {
	alpha = clamp(alpha + 0.05, 0, 1);

	if alpha >= 1 {
		game_restart()
	}
}
