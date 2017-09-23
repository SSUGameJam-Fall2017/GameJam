/// @description Draw Inventory Slot and Contents

if not contains == "" {
	instance_create_depth(self.x,self.y,0,asset_get_index(contains))
}