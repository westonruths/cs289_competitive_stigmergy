/// @description Move to random point
// You can write your code in this editor

var targetX = irandom_range(0, room_width)
var targetY = irandom_range(0, room_height)
move_towards_point(targetX, targetY, spd)

alarm[0] = 50