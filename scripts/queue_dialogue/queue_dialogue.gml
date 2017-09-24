/// @param action

action_index = argument[0];

show_debug_message(obj_story_manager.player_dialogue[action_index, 0]);

player = round(random(1));
if player == 1 {
	dialogue = obj_story_manager.player_dialogue[action_index, clamp(round(random(array_length_2d(obj_story_manager.ai_dialogue, action_index))) - 1, 0, 100)];
	speaker = "You";
} else {
	dialogue = obj_story_manager.ai_dialogue[action_index, clamp(round(random(array_length_2d(obj_story_manager.ai_dialogue, action_index))) - 1, 0, 100)];
	speaker = "AI";
}

ds_queue_enqueue(obj_game_manager.dialogue_queue, dialogue);
ds_queue_enqueue(obj_game_manager.speaker_queue, speaker);
