/// @description Assign Text

words = split_string(text, " ");
slot = 0;
output_lines[slot] = words[0];
var overflow = "";
for (var i = 1; i < array_length_1d(words); i++) {
	var new_line = output_lines[slot] + " " + words[i];
	if (string_length(new_line) > chars_per_line) {
		if (slot == 2) {
			overflow = overflow + " " + words[i];
		} else {
			slot++;
			output_lines[slot] = words[i];
		}
	} else {
		output_lines[slot] = new_line;
	}
}

if (string_length(overflow) > 0) {
	ds_queue_enqueue(obj_game_manager.dialogue_queue, overflow);
}
