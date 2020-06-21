/// @description Insert description here
// You can write your code in this editor


obj_enemy.image_xscale = -1;

 // Morrendo
 if (hp <= 0) 
 {
	instance_destroy();
 }
 
 // recupera mana
if (energia < max_energia) energia += agi / 5;

 
// enemigo atacar
// gastar mana
//if (mouse_check_button_released(mb_left)) energia = 0;