/// @description if "3" is pressed

obj_inventory.active = 2

for (i=0; i<8; i++){
	t = ds_list_find_value(obj_inventory.inventory_slots,i)
	t.active = false
}

t = ds_list_find_value(obj_inventory.inventory_slots,2)
t.active = true
audio_play_sound(snd_inventory,9,false)