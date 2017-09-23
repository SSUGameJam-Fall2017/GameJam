/// @description if "4" is pressed

obj_inventory.active = 3

for (i=0; i<5; i++){
	t = ds_list_find_value(obj_inventory.inventory_slots,i)
	t.active = false
}

t = ds_list_find_value(obj_inventory.inventory_slots,3)
t.active = true