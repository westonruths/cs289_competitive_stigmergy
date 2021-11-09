/// @description Forage

// Choose update forage every few seconds
AntForage()

if pastX == targetX && pastY == targetY {
	targetX = irandom_range(0, room_width)
	targetY = irandom_range(0, room_height)
}


if mp_grid_path(global.grid, path, x, y, targetX, targetY, true) {
	path_start(path, spd, path_action_stop, true);
} else {
	//move_towards_point(targetX, targetY, spd)
}
sprite_index = spr_move
alarm[0] = irandom_range(10, 50)

pastX = targetX
pastY = targetY