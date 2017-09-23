/// @description Initialize

keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("S"), vk_down);

/*
keyboard_set_map(ord("1"), vk_numpad1);
keyboard_set_map(ord("2"), vk_numpad2);
keyboard_set_map(ord("3"), vk_numpad3);
keyboard_set_map(ord("4"), vk_numpad4);
keyboard_set_map(ord("5"), vk_numpad5); // can add more if up inv space
*/

velocity = [0, 0];
acceleration = [1, 1];
jump_height = 11;
max_h_speed = 4;
max_v_speed = 4;
facing = 1;

IDLE = 0;
WALKING = 1;
JUMPING = 2;
FALLING = 3
ATTACKING = 4;
CLIMBING = 5;

state = IDLE;
