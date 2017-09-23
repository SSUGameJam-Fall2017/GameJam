/// @description Create Inventory

inventory_slots = ds_list_create()

for (i=0; i<5; i++) {
	temp = instance_create_layer(100+i*80,display_get_gui_height()-100,"instances",obj_inventory_slot)
	ds_list_add(inventory_slots, temp)
}

for (i=0; i<5; i++){
	if i == 0 {
		inventory_slots[i].active = true
		break
	}
	inventory_slots[i].active = false
}

active = 0 // index of active item
