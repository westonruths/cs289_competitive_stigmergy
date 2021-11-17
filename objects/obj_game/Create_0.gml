/// @description Insert description here
// You can write your code in this editor
global.grid_resolution = 32
global.grid = mp_grid_create(0, 0, room_width div global.grid_resolution + 1, 
						room_height div global.grid_resolution + 1, global.grid_resolution, global.grid_resolution);

global.timer = 0 //set in room start

//game results
global.blue_score = 0
global.red_score = 0
num_blue = 0
num_red = 0
global.blue_deaths = 0
global.red_deaths = 0

//simulation parameters
global.num_blue_ants = 100
global.num_red_ants = 100
global.prob_fleeing_blue = 50
global.prob_fleeing_red = 50
global.evap_rate_food = 1000
global.evap_rate_home = 750
global.spawn_rate = 20