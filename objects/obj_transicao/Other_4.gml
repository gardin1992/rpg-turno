/// @description Seta a posição do player
// You can write your code in this editor

escurecer = false;

obj_player.x = xx;
obj_player.y = yy;

// entrando na room de batalha
if (room == rm_batalha_verao)
{
	obj_control.menu_created = false;
	
	with(obj_player)
	{
		sprite_index = spr_player_right;
		image_index = 0;
		image_speed = 0;
		alarm[0] = 5;
	}
	
	// Criando os inimigos
	if (global.inimigos != 0)
	{
		
		global.inimigo_batalha = ds_list_create(); // criando lista dos inimigos
		global.heroi_batalha = ds_list_create(); // criando lista dos herois

		var numero = array_length_1d(global.inimigos) - 1;
		var repete = irandom_range(1, global.qtdinimigos);
		
		for (var i = 0; i < repete; i++)
		{
			var inimigo_criado = irandom(numero)
			var inimigo = instance_create_layer(0, 0, "Enemy", global.inimigos[inimigo_criado]);
			inimigo.alarm[0] = 5 + (i * 2);
			inimigo.numeroz = i;
		}
	}
}
else if (direcao != 0)
{
	// Destruindo lista dos inimigos
	ds_list_destroy(global.inimigo_batalha);
	ds_list_destroy(global.heroi_batalha);
	
	with(obj_control)
	{
		posicao = 0;
		posicao_i = 0;
		posicao_h = 0;
	}

	obj_player.sprite_index = direcao;
}