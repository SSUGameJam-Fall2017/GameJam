/// @param item_name

item_used = argument[0];
item_used = ds_list_find_value(obj_inventory.inventory_slots, item_used)

if (item_used.contains == 17) { // KEY
	with obj_player {
		if place_meeting(x, y, obj_door) {
			door = collision_line(x - sprite_width / 2, y - sprite_height / 2, 
				x + sprite_width / 2, y - sprite_height / 2, obj_door, false, false);
			if door.is_locked {
				door.is_locked = false;
				if item_used.count > 1 {
					item_used.count -= 1;
				} else {
					item_used.contains = "";
					item_used.count = 0;
				}
			}
		}
	}
} else if (item_used.contains == 9) { // BAT
	obj_player.bat = true
} else if (item_used.contains == 10) { // LARGE FOOD
	with obj_player {
		hp = clamp(hp + 30, 0, 100);
		if item_used.count > 1 {
			item_used.count -= 1
		} else {
			item_used.contains = "";
			item_used.count = 0;
		}
	}
} else if (item_used.contains == 11) { // CAN FOOD
	with obj_player {
		hp = clamp(hp + 10, 0, 100);
		if item_used.count > 1 {
			item_used.count -= 1
		} else {
			item_used.contains = "";
			item_used.count = 0;
		}
	}
} else if (item_used.contains == 6) { // PILLS
	with obj_player {
		hp -= 14
		
		if item_used.count > 1 {
			item_used.count -= 1
		} else {
			item_used.contains = "";
			item_used.count = 0;
		}
	}
} else if (item_used.contains == 8) { // GUN
	with obj_player {
		hp = 0;
	}
	queue_dialogue(obj_story_manager.GUN_FIRED);
}
