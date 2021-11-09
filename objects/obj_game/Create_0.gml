/// @description Insert description here
// You can write your code in this editor

global.blue_score = 0
global.red_score = 0

global.grid_resolution = 32
global.grid = mp_grid_create(0, 0, room_width div global.grid_resolution + 1, 
						room_height div global.grid_resolution + 1, global.grid_resolution, global.grid_resolution);
