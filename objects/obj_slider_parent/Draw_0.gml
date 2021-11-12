/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_sprite_part(sprite_index, 1, 0, 0, sprite_width*(value_/max_value_), sprite_height, x, y-sprite_get_yoffset(sprite_index));
draw_sprite(spr_slider_button, 0, x+sprite_width*(value_/max_value_), y);

draw_set_color(c_white)
draw_text(x-10,y-30, name);
draw_text(x+sprite_width+10,y-sprite_height, string(round(value_)));