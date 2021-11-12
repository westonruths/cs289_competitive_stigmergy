/// @description Forage

// Choose update forage every few seconds
AntForage()

if (running_away) {
	if (object_index == obj_blue_ant) {
		with (obj_blue_nest) {
			other.targetX = x
			other.targetY = y
		}
	} else {
		with (obj_red_nest) {
			other.targetX = x
			other.targetY = y
		}
	}
	running_away = false
}

if mp_grid_path(global.grid, path, x, y, targetX, targetY, true) {
	path_start(path, spd, path_action_stop, true);
} 

alarm[0] = irandom_range(10, 50)