/// @param velocity
/// @param bounce

var velocity = argument0;
var bounce = argument1;

if (place_meeting(x + velocity[0], y, obj_collidable)) {
	while (not place_meeting(x + sign(velocity[0]), y, obj_collidable)) {
		x += sign(velocity[0]);
	}
	if (bounce > 0) {
		velocity[@ 0] = -velocity[@ 0] * bounce;
	} else {
		velocity[@ 0] = 0;
	}
	
}
x += velocity[0];

if (place_meeting(x, y + velocity[1], obj_collidable)) {
	while (not place_meeting(x, y + sign(velocity[1]), obj_collidable)) {
		y += sign(velocity[1]);
	}
	if (bounce > 0) {
		velocity[@ 1] = -velocity[@ 1] * bounce;
	} else {
		velocity[@ 1] = 0;
	}
}
y += velocity[1];
