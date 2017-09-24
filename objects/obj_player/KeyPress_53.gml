/// @description if "5" is pressed

obj_inventory.active = 4

for (i=0; i<5; i++){
	t = ds_list_find_value(obj_inventory.inventory_slots,i)
	t.active = false
}

t = ds_list_find_value(obj_inventory.inventory_slots,4)
t.active = true
audio_play_sound(snd_inventory,9,false)