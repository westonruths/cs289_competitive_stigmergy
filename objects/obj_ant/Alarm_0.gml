/// @description Forage

// Choose update forage every few seconds
AntForage()
move_towards_point(targetX, targetY, spd)
sprite_index = spr_move
alarm[0] = irandom_range(10, 50)