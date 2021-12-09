/// @description Insert description here

draw_self()

// Draw a healthbar
var pc;
pc = (ant_health / health_max) * 100;
if (ant_health < health_max) && (ant_health > 0) && attacking {
	draw_healthbar(x-5,y-10, x+5, y-15, pc, c_black, c_red, c_lime, 0, true, true)
}

//if (running_away) {
//	if object_index == obj_blue_ant {
//		draw_set_color(c_blue)
//	}
//	else {
//		draw_set_color(c_red)	
//	}
//	draw_text(x,y-sprite_height-10,"Run Away!");
//}

// Draw path
//if path_index != -1 {
//	draw_path(path, x, y, 1);
//}