/// @description Lay pheromone
// You can write your code in this editor

if instance_exists(food) {
	instance_create_layer(x, y, "Instances", obj_pheromone_food)
} else {
	instance_create_layer(x, y, "Instances", obj_pheromone_home)	
}

alarm[2] = 40