/// @description Assign Text

output_lines = ds_list_create();
words = split_string(text, " ");
ds_list_add(output_lines, ds_list_find_value(words, 0));
for (var i = 1; i < ds_list_size(words); i++) {
	show_debug_message(ds_list_find_value(output_lines, ds_list_size(output_lines) - 1))
	show_debug_message(ds_list_find_value(words, i))
	var new_line = ds_list_find_value(output_lines, ds_list_size(output_lines) - 1) + 
		" " + ds_list_find_value(words, i);
	if string_length(new_line) <= display_get_gui_width() - 40 {
		ds_list_add(output_lines, ds_list_find_value(words, i));
	} else {
		ds_list_set(output_lines, ds_list_size(output_lines) - 1, new_line);
	}
} 
