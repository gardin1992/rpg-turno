/// @description Insert description here
// You can write your code in this editor

draw_self(); 

if (morrer) 
{
	// deixar sprite vermelha
	gpu_set_fog(1, c_red, 0, 1);
	draw_set_alpha(image_alpha);
	draw_sprite(sprite_index, image_index, x, y);
	draw_set_alpha(1);
	gpu_set_fog(0, c_white, 0, 1);
}
else {
	
	// supeior esquerda do player
	var xx = x - sprite_xoffset;
	var yy = y - sprite_yoffset;
	vida = (hp / max_hp) * 100;
	energia_ = (energia / max_energia) * 100;

	// desenhando barra de vida
	draw_healthbar(xx - 20, yy - 5, xx + 50, yy - 15, vida, c_dkgray, c_red, c_green, 0, true, true);
	
	// desenhando barra de mana
	// draw_healthbar(xx - 20, y + 5, xx + sprite_width + 20, y + 15, energia_, c_dkgray, c_blue, c_aqua, 0, true, true);
	
	// desenhando barra de energia
	draw_healthbar(xx - 20, y + 5, xx + 50, y + 15, energia_, c_dkgray, c_blue, c_aqua, 0, true, true);
}
