/// @description Spawn New Ant
// You can write your code in this editor

instance_create_layer(x, y, "Instances", ant_type)

alarm[0] = (room_speed * 2) / global.speed_factor