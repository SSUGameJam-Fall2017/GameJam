/// @description "u"se item

selected = 0
for (i=0; i<5; i++){
	t = ds_list_find_value(obj_inventory.inventory_slots,i)
	if (t.active = true) { selected = i; break }
}

// use object!
// (script2.gml)