/// @description Menu da batalha

if (room == rm_batalha_fora)
{
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
			
			if (select && ds_list_find_value(global.heroi_batalha, posicao_h).energia >= 99) 
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
							heroi_atual.sprite_index = spr_player_right;
						}
						
						momento++;
						break;
					case 1:
						momento--;
						heroi_atual.def *= 2;
						heroi_atual.defendendo = true;
						heroi_atual.energia = 0;
						break;
					case 2:
						global.batalha = false;
				}
			}
			
			if (dselect) momento--;
			
			break;
		case 2: 
			// Movendo posicao dos inimigos
			src_inimigo_batalha(global.inimigo_batalha);
			
			if (select)
			{
				momento = 0;
				
				heroi_atual.energia = 0;
				heroi_atual = 0;
				
				inimigo_atual = ds_list_find_value(global.inimigo_batalha, posicao_i);
				// aplicando dano
				inimigo_atual.hp -= (heroi_atual.atq - inimigo_atual.def);
			}
			
			if (dselect) momento--;
			
			break;
	}
}