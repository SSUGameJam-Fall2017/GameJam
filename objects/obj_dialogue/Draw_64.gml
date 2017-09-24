/// @description Draw GUI

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_sprite(sprite_index, noone, x, y);
if speaker == "AI" {
	draw_set_color(c_fuchsia);
} else {
	draw_set_color(c_white);
}

for (var i = 0; i < array_length_1d(output_lines); i++) {
	draw_text(text_start_x, text_start_y + (i * line_offset), output_lines[i]);
}

draw_set_halign(fa_center);
draw_set_color(c_green);
draw_text(speaker_start_x, speaker_start_y, speaker);
