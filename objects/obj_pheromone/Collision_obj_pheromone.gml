/// @description Insert description here
// You can write your code in this editor

strength += other.strength

if alarm[0] < other.alarm[0] {
	instance_destroy()
} else {
	alarm[0] = (alarm[0]+other.alarm[0])/2	
}