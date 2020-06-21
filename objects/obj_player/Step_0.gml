/// @description Movimento

script_execute(get_input)

// depth = -y / 100;


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
		sprite_index = spr_warrior_right;
	}
	else if (h_spd < 0)
	{
		sprite_index = spr_warrior_left;
	}
	
	if (v_spd > 0) 
	{
		sprite_index = spr_warrior_front;
	}
	else if (v_spd < 0)
	{
		sprite_index = spr_warrior_back;
	}
	
#endregion
}
else if (room != rm_batalha_verao)
{
	image_index = 0;
	image_speed = 0;
}

#region Batalha
if (room == rm_batalha_verao)
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
				inimigo_atual.estado = enemyState.NORMAL;
				
				estado = heroState.NORMAL;
			}
		break;
		
		case heroState.DEFENDENDO:
		
			energia = 0;
		
			sprite_index = sprite_defendendo;
			image_speed = 1;
		
			var n_img = image_number - 1;
			
			if (image_index >= n_img)
			{
				if (defendendo && obj_control.posicao > 0)
				{
					def *= 2;
					energia = 0;
					estado = heroState.NORMAL;
					obj_control.posicao = 0;
				}
			}
		break;
	}
}

#endregion


#region GANHANDO LVL
if (ex >= max_exp)
{
	lvl++; 
	max_hp		+= 2 + lvl;
	hp			= max_hp;
	max_sp		+= 1 + floor(lvl/2);
	sp			= max_sp;
	atq			+= 1 + floor(lvl/2);
	def			+= .2;
	agi			+= .2;
	max_exp		+= 50 + (lvl * 10);
	ex			= 0;
	sorte		+= .0005;
	
	show_debug_message("Meu lvl é: " + string(lvl))
}
#endregion
