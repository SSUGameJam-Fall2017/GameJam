/// @param action

action_index = argument[0];

len_player = array_length_2d(obj_story_manager.player_dialogue, action_index);
len_ai = array_length_2d(obj_story_manager.ai_dialogue, action_index);
for (var i = 0; i < max(len_player, len_ai); i++) {
	if i < len_player {
		ds_queue_enqueue(obj_game_manager.dialogue_queue, obj_story_manager.player_dialogue[action_index, i]);
		ds_queue_enqueue(obj_game_manager.speaker_queue, "You");
	}
	if i < len_ai {
		ds_queue_enqueue(obj_game_manager.dialogue_queue, obj_story_manager.ai_dialogue[action_index, i]);
		ds_queue_enqueue(obj_game_manager.speaker_queue, "AI");
	}
}
