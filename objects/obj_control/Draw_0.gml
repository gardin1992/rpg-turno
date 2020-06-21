/// @description Menu da batalha

if (room == rm_batalha_verao)
{
	if (!fimbatalha)
	{
		#region BATALHA
		var select = keyboard_check_released(ord("X"));
		var dselect = keyboard_check_released(ord("Z"));

		// desenhando caixa do menu
		draw_rectangle_color(0, room_height, room_width, room_height - 60, c_teal, c_teal, c_teal, c_teal, false);
		draw_rectangle_color(0, room_height, room_width, room_height - 60, c_black, c_black, c_black, c_black, true);
	
		switch(momento)
		{
			case 0:
				// Movendo posicao dos herois
				src_heroi_batalha(global.heroi_batalha);
			
				if (select 
					&& ds_list_find_value(global.heroi_batalha, posicao_h).energia >= 99
					&& heroi_atual == 0
				) 
				{
					momento++;
					heroi_atual = ds_list_find_value(global.heroi_batalha, posicao_h).energia = 0;;
				}
				break;
			case 1:
				// desenhando açõs possiveis
				src_heroi_actions();
			
				if (select)
				{
					switch(posicao)
					{
						case 0:
							if (heroi_atual.defendendo == true)
							{
								heroi_atual.def /= 2;
								heroi_atual.defendendo = false;
								heroi_atual.estado = heroState.NORMAL;
							}
						
							momento++;
							break;
						case 1:
							momento--;
							heroi_atual.estado = heroState.DEFENDENDO;
							heroi_atual.defendendo = true;
							heroi_atual = 0;
							break;
						case 2:
							momento = 0;
							global.batalha = false;
							heroi_atual = 0;
							heroi_atual.estado = heroState.NORMAL;
					}
				}
			
				if (dselect) momento--;
			
				break;
			case 2: 
				// Movendo posicao dos inimigos
				src_inimigo_batalha(global.inimigo_batalha);
			
				if (select)
				{
				
					// aplicando dano
					inimigo_atual = ds_list_find_value(global.inimigo_batalha, posicao_i);
					heroi_atual.inimigo_atual = inimigo_atual;
				
					// alterando o estado do heroi atual
					heroi_atual.estado = heroState.ATACANDO;
				
					momento = 0;
					heroi_atual = 0;
				}
			
				if (dselect) momento--;
			
				break;
		}
		#endregion
	}
	else // a batalha acabou
	{
		if (mostrar_exp)
		{
			if (exp_player < exp_atual) 
			{
				exp_player += exp_atual * .01;
			}
			
			gpu_set_blendmode(bm_subtract);
			draw_roundrect_color(50, 50, room_width - 50, room_height - 50, c_gray, c_gray, false);
			gpu_set_blendmode(bm_normal);
			draw_roundrect_color(50, 50, room_width - 50, room_height - 50, c_black, c_black, true);
			
			// desenhar a experiência
			draw_set_font(fnt_padrao);
			draw_set_halign(fa_left);
			draw_text(70, 70, "Experiência: " + string(ceil(exp_player)));
			draw_set_font(-1);
		}
	}
}