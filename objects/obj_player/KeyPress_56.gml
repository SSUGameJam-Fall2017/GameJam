/// @description if "8" is pressed

obj_inventory.active = 7

for (i=0; i<8; i++){
	t = ds_list_find_value(obj_inventory.inventory_slots,i)
	t.active = false
}

t = ds_list_find_value(obj_inventory.inventory_slots,7)
t.active = true
audio_play_sound(snd_inventory,9,false)