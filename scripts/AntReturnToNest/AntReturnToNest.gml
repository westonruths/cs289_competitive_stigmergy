// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AntReturnToNest(){
	var max_dist  = 100
	var max_strength = 0
	var phero = noone
	
	with(obj_pheromone_home) {	
		if (other.x > x) && (other.y > y) && (other.object_index==obj_blue_ant) && (owner.object_index == obj_blue_ant) {
			var dist = distance_to_object(other)
			if (dist < max_dist) && (strength >= max_strength) {
				max_strength = strength
				phero = self
			}
		} else if (other.x < x) && (other.y < y) && (other.object_index==obj_red_ant) && (owner.object_index == obj_red_ant) {
			var dist = distance_to_object(other)
			if (dist < max_dist) && (strength >= max_strength) {
				max_strength = strength
				phero = self
			}
		}
	}
	
	// If no pheromone then move to random point
	if !instance_exists(phero) {
		targetX = irandom_range(0, room_width)
		targetY = irandom_range(0, room_height)
	} else {
		targetX = phero.x
		targetY = phero.y
		var new_phero = instance_create_layer(x, y, "Instances", obj_pheromone_food)
		with (new_phero) {
			owner = other
		}
	}
}