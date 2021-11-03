/// @description Perform attack
// You can write your code in this editor

sprite_index = spr_attack

// Set direction towards enemy
with(enemy_target) {
	other.direction = point_direction(other.x, other.y, x, y)
}