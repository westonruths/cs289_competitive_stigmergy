// Draw collision mask
//draw_set_alpha(0.3);
//mp_grid_draw(global.grid);
//draw_set_alpha(1);

draw_set_font(fnt_text)

switch(room){
	case rm_test1:
	case rm_test2:
	case rm_test3:
	case rm_test4:
		draw_set_alpha(0.8);
		draw_rectangle_color(0,0,room_width,32, c_white, c_white, c_white, c_white, false)
		draw_set_alpha(1);
		draw_set_color(c_blue)
		draw_text(25,6, "SCORE: " + string(global.blue_score));
		draw_text(150,6, "DEATHS: " + string(global.blue_deaths));
		draw_set_color(c_red)
		draw_text(300,6, "SCORE: " + string(global.red_score));
		draw_text(425,6, "DEATHS: " + string(global.red_deaths));
		draw_set_color(c_black)
		draw_text(600,6, "TIMER: " + string(global.timer));
		
		draw_set_color(c_black)
		draw_text(5,room_height-75, "Simulation Parameters");
		draw_text(25,room_height-50, "Blue Ants: " + string(global.num_blue_ants));
		draw_text(25,room_height-25, " Red Ants: " + string(global.num_red_ants));
		draw_text(200,room_height-50, "Blue Prob Flee: " + string(global.prob_fleeing_blue));
		draw_text(200,room_height-25, " Red Prob Flee: " + string(global.prob_fleeing_red));
		draw_text(450,room_height-50, "Food Phero Duration: " + string(global.evap_rate_food));
		draw_text(450,room_height-25, "Home Phero Duration: " + string(global.evap_rate_home));
		draw_text(750,room_height-50, "Spawn Delay: " + string(global.spawn_rate));
		break;
	
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_set_font(fnt_text_big)
		draw_text_transformed_color(
			room_width/2, 75, "WESTANT",
			1, 1, 0, c,c,c,c, 1
		);
		draw_set_font(fnt_text)
		draw_text(
			room_width/2, 150,
			@"Bryce Strauss and Weston Ruths"
		);
		draw_text(
			room_width/2, 200,
			@">> Choose the Simulation Parameters <<"
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_end:
		draw_set_halign(fa_center);
		var c = c_green;
		draw_set_font(fnt_text_big)
		draw_text_transformed_color(
			room_width/2, 100, "ROUND COMPLETE",
			1, 1, 0, c,c,c,c, 1
		);
		draw_set_font(fnt_text)
		draw_set_color(c_black)
		draw_text(
			room_width/2, 175,
			@">> Results Are Below <<"
		);
		draw_set_color(c_blue)
		draw_text(room_width/2-100, 250, "BLUE SCORE: " + string(global.blue_score));
		draw_text(room_width/2-100, 275, "BLUE DEATHS: " + string(global.blue_deaths));
		draw_set_color(c_red)
		draw_text(room_width/2+100, 250, "RED SCORE: " + string(global.red_score));
		draw_text(room_width/2+100, 275, "RED DEATHS: " + string(global.red_deaths));
		draw_set_halign(fa_left);
		draw_set_color(c_black)
		draw_text(5,room_height-75, "Simulation Parameters");
		draw_text(25,room_height-50, "Blue Ants: " + string(global.num_blue_ants));
		draw_text(25,room_height-25, " Red Ants: " + string(global.num_red_ants));
		draw_text(200,room_height-50, "Blue Prob Flee: " + string(global.prob_fleeing_blue));
		draw_text(200,room_height-25, " Red Prob Flee: " + string(global.prob_fleeing_red));
		draw_text(450,room_height-50, "Food Phero Duration: " + string(global.evap_rate_food));
		draw_text(450,room_height-25, "Home Phero Duration: " + string(global.evap_rate_home));
		draw_text(750,room_height-50, "Spawn Delay: " + string(global.spawn_rate));
		break;
		
	case rm_arena_select:
		draw_set_halign(fa_center);
		draw_set_color(c_yellow)
		draw_text(
			room_width/2, 50,
			@">> Select the Map for the Simulation <<"
		);
		draw_set_halign(fa_left);
}