/// @description Insert description here
// You can write your code in this editor

if instance_exists(food) {
	exit
}

food = instance_create_layer(x, y+5, "Instances", obj_food)