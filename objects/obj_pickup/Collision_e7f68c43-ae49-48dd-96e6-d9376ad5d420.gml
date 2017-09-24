/// @description Pickup Collision with Player

var dialogue_var = random(10);

for (i=0; i<ds_list_size(obj_inventory.inventory_slots); i++){
	temp = ds_list_find_value(obj_inventory.inventory_slots,i)
	if (temp.contains == self.sprite_index){
		temp.count ++
		if dialogue_var >= 7 {
			if (temp.contains == 17) { // KEY
				queue_dialogue(obj_story_manager.KEY_PICKED_UP);
			} else if (temp.contains == 9) { // BAT
				queue_dialogue(obj_story_manager.BAT_PICKED_UP);
			} else if (temp.contains == 10) { // LARGE FOOD
				queue_dialogue(obj_story_manager.FOOD_PICKED_UP);
			} else if (temp.contains == 11) { // CAN FOOD
				queue_dialogue(obj_story_manager.FOOD_PICKED_UP);
			} else if (temp.contains == 6) { // PILLS
				queue_dialogue(obj_story_manager.PILLS_PICKED_UP);
			} else if (temp.contains == 8) { // GUN
				queue_dialogue(obj_story_manager.GUN_PICKED_UP);
			}
		}
		instance_destroy(self)
		break
	}
	else if (temp.contains == "") {
		temp.contains = self.sprite_index
		temp.count ++
		if dialogue_var >= 7 {
			if (temp.contains == 17) { // KEY
				queue_dialogue(obj_story_manager.KEY_PICKED_UP);
			} else if (temp.contains == 9) { // BAT
				queue_dialogue(obj_story_manager.BAT_PICKED_UP);
			} else if (temp.contains == 10) { // LARGE FOOD
				queue_dialogue(obj_story_manager.FOOD_PICKED_UP);
			} else if (temp.contains == 11) { // CAN FOOD
				queue_dialogue(obj_story_manager.FOOD_PICKED_UP);
			} else if (temp.contains == 6) { // PILLS
				queue_dialogue(obj_story_manager.PILLS_PICKED_UP);
			} else if (temp.contains == 8) { // GUN
				queue_dialogue(obj_story_manager.GUN_PICKED_UP);
			}
		}
		instance_destroy(self)
		break
	}
}
