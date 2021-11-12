/// @description Insert description here

// Make sure we are colliding with the enemy
if (object_index == other.object_index) {
	exit
}

if (running_away) {
	exit
}

// Random chance to flee fight
if random(100) <= prob_flee {
	running_away = true
	exit
}

enemy_target = other
	
// Stop movement
path_speed = 0

// Randomly select attack interval
if (!attacking) {
	alarm[1] = irandom_range(10, 50)
	attacking = true
}

// Disable movement alarm
alarm[0] = -1