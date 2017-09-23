/// @description Draw GUI

if start_menu {
	draw_set_color(c_purple);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "Stranded");
	draw_text(display_get_gui_width() / 2, display_get_gui_height() - 20, "Press SPACE to wake up...");
} else if is_paused {
	draw_set_color(c_black);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "Paused");
} 
