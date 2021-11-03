/// @description Insert description here

// Hurt the enemy when we complete our attack
if (sprite_index == spr_attack) {
	with(enemy_target) {
		ant_health -= 1
		if (ant_health <= 0) {
			sprite_index = spr_dead
			//disable the enemies attack alarm
			alarm[1] = -1
			//reenable our movement alarm
			other.alarm[0] = 1
		}
	}
	attacking = false
}

if (sprite_index == spr_dead) {
	instance_destroy()
}

if (speed == 0) {
	sprite_index = spr_idle
	
} else {
	sprite_index = spr_move
}