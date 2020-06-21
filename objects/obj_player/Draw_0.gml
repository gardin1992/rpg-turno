/// @description 

draw_self(); // desenhando o player

if (room == rm_batalha_fora)
{
	// supeior esquerda do player
	var xx = x - sprite_xoffset;
	var yy = y - sprite_yoffset;
	vida = (hp / max_hp) * 100;
	energia_ = (energia / max_energia) * 100;

	// desenhando barra de vida
	draw_healthbar(xx - 20, yy - 5, xx + sprite_width + 20, yy - 15, vida, c_dkgray, c_red, c_green, 0, true, true);
	
	// desenhando barra de mana
	// draw_healthbar(xx - 20, y + 5, xx + sprite_width + 20, y + 15, energia_, c_dkgray, c_blue, c_aqua, 0, true, true);
	
	// desenhando barra de energia
	draw_healthbar(xx - 20, y + 5, xx + sprite_width + 20, y + 15, energia_, c_dkgray, c_blue, c_aqua, 0, true, true);
}
