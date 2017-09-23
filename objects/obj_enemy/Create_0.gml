/// @description Insert description here
// You can write your code in this editor
start_x = x;
start_y = y;
hps = 0
vps = 0
grav = 0.5
hp = 10
mode = 1
enum e_state{
	IDLE,
	CHASE,
	RETURN,
	ATTACK,
	DEATH
}
enemy_state = e_state.IDLE
path_start(enemy_path, 3, path_action_reverse,false);