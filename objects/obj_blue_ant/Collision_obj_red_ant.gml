/// @description Insert description here

// Stop movement
speed = 0
sprite_index = spr_idle

// Randomly select attack interval
alarm[1] = irandom_range(room_speed*3, room_speed*5)