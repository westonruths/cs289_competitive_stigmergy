/// @description Spawn New Ant
// You can write your code in this editor

instance_create_layer(x, y, "Instances", ant_type)
ant_count -= 1

if (ant_count <= 0) {
	exit;
} else {
	alarm[0] = 20
}