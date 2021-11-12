/// @description Insert description here
// You can write your code in this editor

if room != rm_game {
	exit
}

global.timer -= 1

if global.timer <= 0 {
	num_blue = instance_number(obj_blue_ant)
	num_red = instance_number(obj_red_ant)
	
	
	room_goto(rm_end)
}