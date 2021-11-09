// Draw collision mask
//draw_set_alpha(0.3);
//mp_grid_draw(global.grid);
//draw_set_alpha(1);

switch(room){
	case rm_game:
		draw_set_color(c_blue)
		draw_text(200,2, "BLUE SCORE: " + string(global.blue_score));
		draw_set_color(c_red)
		draw_text(400,2, "RED SCORE: " + string(global.red_score));
		break;
	
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 100, "CS289 Competitive Stigmergy",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 200,
			@"Bryce Strauss and Weston Ruths

>> TAP TO START <<
"
		);
		draw_set_halign(fa_left);
		break;
		
}