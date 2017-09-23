/// @description Initialize

keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("S"), vk_down);

velocity = [0, 0];
acceleration = [1, 0.5];
jump_height = 4.5;
max_h_speed = 4;
facing = 1;

IDLE = 0;
WALKING = 1;
JUMPING = 2;
FALLING = 3
ATTACKING = 4;

state = IDLE;