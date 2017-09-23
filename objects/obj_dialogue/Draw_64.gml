/// @description Draw_GUI

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_sprite(sprite_index, noone, x, y);
draw_set_color(c_white);

for (var i = 0; i < array_length_1d(output_lines); i++) {
	draw_text(text_start_x, text_start_y + (i * line_offset), output_lines[i]);
}
