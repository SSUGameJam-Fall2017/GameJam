/// @description if "1" is pressed (inv)

obj_inventory.active = 0

for (i=0; i<8; i++){
	t = ds_list_find_value(obj_inventory.inventory_slots,i)
	t.active = false
}

t = ds_list_find_value(obj_inventory.inventory_slots,0)
t.active = true
audio_play_sound(snd_inventory,9,false)
