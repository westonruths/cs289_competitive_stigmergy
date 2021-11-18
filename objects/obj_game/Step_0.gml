/// @description Insert description here
// You can write your code in this editor

switch(room){
	case rm_test1:
	case rm_test2:
	case rm_test3:
	case rm_test4:
		global.timer -= 1

		if global.timer <= 0 {
			num_blue = instance_number(obj_blue_ant)
			num_red = instance_number(obj_red_ant)
	
	
			room_goto(rm_end)
		}
		break;
	
	case rm_end:
		mp_grid_clear_all(global.grid)
		break;
}
