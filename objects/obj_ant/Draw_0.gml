/// @description Insert description here

draw_self()

// Draw a healthbar
var pc;
pc = (ant_health / health_max) * 100;
if (ant_health < health_max) && (ant_health > 0) && attacking {
	draw_healthbar(x-5,y-10, x+5, y-15, pc, c_black, c_red, c_lime, 0, true, true)
}

// Draw path
//if path_index != -1 {
//	draw_path(path, x, y, 1);
//}