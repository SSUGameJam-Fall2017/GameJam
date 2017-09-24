width = display_get_gui_width()
height = display_get_gui_height()
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_set_color(c_red)
if (obj_player.captured > 0){
	draw_rectangle(width-obj_player.captured,height-50,(width-obj_player.captured)+obj_player.captured,height-40,false)
	draw_rectangle_color(width-obj_player.hp,height-30,(width-obj_player.hp)+obj_player.hp,height-20,c_yellow,c_yellow,c_yellow,c_yellow,false)
}
