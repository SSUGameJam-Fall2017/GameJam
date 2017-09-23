/// @description Draw

var h_input = keyboard_check(vk_right) - keyboard_check(vk_left);
draw_sprite_ext(sprite_index, image_index, x, ceil(y), image_xscale * facing, image_yscale, 0, image_blend, image_alpha);
