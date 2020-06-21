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
else if (room != rm_batalha_fora)
{
	image_index = 0;
	image_speed = 0;
}

#region Batalha
if (room == rm_batalha_fora)
{
	switch(estado)
	{
		case heroState.NORMAL:
		
			if (!defendendo) {
				sprite_index = sprite_luta;
				image_speed = 0;
			}
				
			energia += agi / 5;
			if (energia > max_energia) energia = max_energia;
			
			show_debug_message("NORMAL: Def: " + string(def));
		break;
		case heroState.ATACANDO:
			energia = 0;
			
			sprite_index = sprite_atacando;
			image_speed = 1;
			
			var n_img = image_number - 1;
			
			if (image_index >= n_img)
			{
				
				inimigo_atual.hp -= max(0, (atq - inimigo_atual.def));
				inimigo_atual.dano = true;
				inimigo_atual.alarm[1] = room_speed;
				estado = heroState.NORMAL;
			}
		break;
		
		case heroState.DEFENDENDO:
			sprite_index = sprite_defendendo;
			
			if (defendendo && obj_control.posicao > 0)
			{
				def *= 2;
				energia = 0;
				estado = heroState.NORMAL;
				obj_control.posicao = 0;
			}
			
			show_debug_message("DEFENDENDO. Def: " + string(def));
		break;
	}
}

#endregion

