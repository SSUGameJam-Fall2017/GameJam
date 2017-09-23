/// @description Insert description here
// You can write your code in this editor
// idle
player_x = obj_player.x
player_y = obj_player.y

if (point_distance(x,y,player_x,player_y) < 110){ 
	enemy_state = e_state.CHASE
}
else if(place_meeting(x,y,obj_player)){
	enemy_state = e_state.ATTACK
}
else if(hp <= 0){
	enemy_state = e_state.DEATH
}
