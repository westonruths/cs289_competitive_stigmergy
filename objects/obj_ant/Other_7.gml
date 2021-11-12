/// @description Insert description here

// Hurt the enemy when we complete our attack
if (sprite_index == spr_attack) {
	with(enemy_target) {
		ant_health -= 1
		if (ant_health <= 0) {
			sprite_index = spr_dead
			//disable the enemies attack alarm and stop its movement
			alarm[1] = -1
			path_speed = 0
			//reenable the movement alarm
			other.alarm[0] = 1
		}
	}
	attacking = false
}

if (sprite_index == spr_dead) {
	//update death counter
	if object_index == obj_blue_ant {
		global.blue_deaths += 1
	} else {
		global.red_deaths += 1
	}
	
	instance_destroy()
}

if (sprite_index == spr_idle) {
	alarm[0] = 1
}

if (path_speed == 0) {
	sprite_index = spr_idle
} else {
	sprite_index = spr_move
}