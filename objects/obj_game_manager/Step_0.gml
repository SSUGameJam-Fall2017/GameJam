/// @description Update

if game_over {
	alpha = clamp(alpha + 0.05, 0, 1);

	if alpha >= 1 {
		game_restart();
	}
}
