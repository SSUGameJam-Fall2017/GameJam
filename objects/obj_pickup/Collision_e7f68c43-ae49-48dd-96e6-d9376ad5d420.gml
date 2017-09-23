/// @description Pickup Collision with Player

for (i=0; i<ds_list_size(inventory_slots); i++){
	if (inventory_slots[i].contains == "") {
		inventory_slots[i].contains = self.id
	}
}
