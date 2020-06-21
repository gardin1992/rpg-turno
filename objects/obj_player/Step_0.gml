/// @description Movimento

script_execute(get_input)

depth = -y / 100;


if (ativo == true && global.batalha == false) {
#region Movimento

	h_spd = (key_right - key_left) * spd;
	v_spd = (key_down - key_up) * spd;
	
	if (h_spd != 0 || v_spd != 0)
	{
		movendo = true;
	}
	else
	{
		movendo = false;
	}
	
	if (movendo == true)
	{
		global.intervalo_batalha--;
	}

	if place_meeting(x + h_spd, y, obj_wall)
	{
		while(!place_meeting(x + sign(h_spd), y, obj_wall))
		{
			x += sign(h_spd);
		}
		h_spd = 0;
	}
	
	x += h_spd;
	
	if place_meeting(x, y + v_spd, obj_wall)
	{
		while(!place_meeting(x, y + sign(v_spd), obj_wall))
		{
			y += sign(v_spd);
		}
		v_spd = 0;
	}
	
	y += v_spd;
	
	image_speed  = 0.5;
	if (h_spd == 0 && v_spd == 0)
	{
		image_speed = 0;
		image_index = 0;
	}
	
	if (h_spd > 0)
	{
		sprite_index = spr_player_right;
	}
	else if (h_spd < 0)
	{
		sprite_index = spr_player_left;
	}
	
	if (v_spd > 0) 
	{
		sprite_index = spr_player_down;
	}
	else if (v_spd < 0)
	{
		sprite_index = spr_player_top;
	}
	
#endregion
}
else 
{
	image_index = 0;
	image_speed = 0;
}

if (room == rm_batalha_fora)
{
	energia += agi / 5;
	if (energia > max_energia) energia = max_energia;
	
	// diminui energia
	if (mouse_check_button_released(mb_left)) energia = 0;
	
	
}

if (defendendo == true) {
	sprite_index = spr_player_defendendo;
}
