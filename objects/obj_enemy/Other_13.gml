//attack
player_x = obj_enemy.x
player_y = obj_enemy.y
if (point_distance(x,y,player_x,player_y) < 50){
		hps = 0	
}
else if(self.hp <= 0){
	enemy_state = e_state.DEATH
}
else{
	mode = 0
	enemy_state = e_state.CHASE
}