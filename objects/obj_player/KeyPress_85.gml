/// @description "u"se item

for (i=0; i<8; i++){
	t = ds_list_find_value(obj_inventory.inventory_slots,i)
	if (t.active = true) {
		use_item(i); 
		break;
	 }
}
