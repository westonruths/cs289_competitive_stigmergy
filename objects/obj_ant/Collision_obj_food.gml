/// @description Insert description here
// You can write your code in this editor

// If you run into an unowned piece of food then you can take it
var new_food = other
if !instance_exists(new_food.owner) {
	food = new_food
	with (new_food) {
		owner = other
	}
}