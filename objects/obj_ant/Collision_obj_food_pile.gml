/// @description Insert description here
// You can write your code in this editor

// If already holding food then get outta here
if instance_exists(food) {
	exit
}

// Create food item to carry around
food = instance_create_layer(x, y, "Instances", obj_food)
with (food) {
	owner = other
}

// Subtract from food pile
with (other) {
	food_count -= 1
}