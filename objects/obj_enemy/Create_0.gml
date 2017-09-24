/// @description Insert description here
// You can write your code in this editor
start_x = x;
start_y = y;
hps = 0
vps = 0
grav = 0.5
hp = 40
mode = 1
enum e_state{
	IDLE,
	CHASE,
	RETURN,
	ATTACK,
	DEATH,
	HURT
}
enemy_state = e_state.IDLE
en_path = path_add()
path_add_point(en_path,x,y,100)
path_add_point(en_path,x-100,y,100)
path_start(en_path, 3, path_action_reverse,false);
timeInit = current_time;
timeCurrent = current_time;
interval = 9000; 
blend = image_blend
deathr = false
deathl = false
