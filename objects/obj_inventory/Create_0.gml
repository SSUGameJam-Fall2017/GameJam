/// @description Create Inventory

// ---- creates inv slots, setting one active ---

inventory_slots = ds_list_create()

for (i=0; i<5; i++) {
	temp = instance_create_layer(100+i*80,display_get_gui_height()-100,"instances",obj_inventory_slot)
	ds_list_add(inventory_slots, temp)
}

t=ds_list_find_value(inventory_slots, 0) // ONLY USED TO SET INIT ACTIVE SLOT
t.active = true

active = 0 // index of active item

// ----------------------------------------------
