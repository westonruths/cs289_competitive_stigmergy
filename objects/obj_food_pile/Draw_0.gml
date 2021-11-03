/// @description Insert description here
// You can write your code in this editor

draw_self()

if food_count > 80 {
	sprite_index = spr_food_xxlarge
} else if food_count > 60 {
	sprite_index = spr_food_xlarge
} else if food_count > 30 {
	sprite_index = spr_food_large
} else if food_count > 8 {
	sprite_index = spr_food_med
} else if food_count > 1 {
	sprite_index = spr_food_small
} else {
	sprite_index = spr_food
}

draw_set_color(c_black)
draw_text(x,y+sprite_height-10,string(food_count));