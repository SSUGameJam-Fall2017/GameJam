/// @description Draw Inventory Slot and Contents

draw_sprite(spr_inventory_slot, 0, self.x, self.y)

if contains != "" {
	//draw_clear_alpha(c_white, 1.0);
	draw_sprite(contains, 0, self.x, self.y) // 0 NOT ALWAYS RIGHT
}