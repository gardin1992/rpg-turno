/// @description Insert description here
// You can write your code in this editor
healts = ds_list_create();

for(var i = 0; i < 5; i++) 
{
	var healt = instance_create_layer(0, 0, "Player", obj_healt_dot);
	ds_list_add(healts, healt);
}