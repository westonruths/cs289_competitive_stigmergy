/// @description Move to random point
// You can write your code in this editor

targetX = irandom_range(0, room_width)
targetY = irandom_range(0, room_height)
move_towards_point(targetX, targetY, spd)
sprite_index = spr_move

// Choose a random direction every couple of seconds
alarm[0] = irandom_range(50, 100)