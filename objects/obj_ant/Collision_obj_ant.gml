/// @description Insert description here

// Random chance to flee fight
if irandom_range(0, 1) {
	exit
}

// Make sure we are colliding with the enemy
if instance_exists(obj_enemy) {
	if (other.object_index != obj_enemy.object_index) {
		exit
	}
} else {
	exit
}

enemy_target = other
	
// Stop movement
path_end()

// Randomly select attack interval
if (!attacking) {
	alarm[1] = irandom_range(10, 50)
	attacking = true
}

// Disable movement alarm
alarm[0] = -1