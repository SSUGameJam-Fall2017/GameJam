/// @description Create Inventory

inventory_slots = ds_list_create()

for (i=0; i<5; i++) {
	ds_list_add(inventory_slots, instance_create_layer(0,0,"instances",obj_inventory_slot))
}
