/// @description Pickup Collision with Player

for (i=0; i<ds_list_size(obj_inventory.inventory_slots); i++){
	temp = ds_list_find_value(obj_inventory.inventory_slots,i)
	if (temp.contains == self.sprite_index){
		temp.count ++
		instance_destroy(self)
		break
	}
	else if (temp.contains == "") {
		temp.contains = self.sprite_index
		temp.count ++
		instance_destroy(self)
		break
	}
}
