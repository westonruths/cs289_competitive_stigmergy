
/// @description Insert description here

// Make the graphic face the right direction
if (direction > 90) && (direction < 270) image_xscale = 1; else image_xscale = -1;

// Update the position of our food item so that it follows the ant
with (food) {
	x = other.x - other.sprite_width/2 + 1
	y = other.y
}

if (x == targetX && y == targetY) {
	alarm[0] = 1
}

if sprite_index == spr_dead {
	path_speed = 0
}