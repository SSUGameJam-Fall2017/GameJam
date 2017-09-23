/// @description Draw Inventory Slot and Contents

if active = true {
	draw_rectangle_colour(self.x-30, self.y-30, self.x+30, self.y+30, c_yellow, c_yellow, c_yellow, c_yellow, false)
}

draw_sprite(spr_inventory_slot, 0, self.x, self.y)

if contains != "" {
	//draw_clear_alpha(c_white, 1.0);
	draw_sprite(contains, 0, self.x, self.y) // 0 NOT ALWAYS RIGHT
	draw_text_color(self.x+20, self.y+20, self.count, c_black, c_black, c_black, c_black, 1.0)
}