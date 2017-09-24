//death
if(self.hp <= 0){
	if (!place_meeting(x,y+vps,obj_collidable)){
		y += grav
	}
	if (image_xscale == -1){
		image_xscale = 1
	}
	image_angle = -90
	image_blend = blend
	if (place_meeting(x, y + 10, obj_collidable)) {
		while (not place_meeting(x, y + 1, obj_collidable)) {
			y += 1;
		}
	}
}
