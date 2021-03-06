/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) {
	var button_x = x+sprite_width*(value_/max_value_);
	var button_y = y;
	var button_radius = sprite_get_width(spr_slider_button)/2;
	if point_in_circle(mouse_x, mouse_y, button_x, button_y, button_radius) {
		selected_ = true;
	}
}

if !mouse_check_button(mb_left) {
	selected_ = false;
}

if selected_ {
	value_ = max_value_*clamp((mouse_x-x)/sprite_width, 0, 1);
	event_user(0);
}
