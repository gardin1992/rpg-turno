/// @description Configurando o control

// Entrando em batalha
if (global.batalha == false)
{
	global.ponto_atual = irandom(global.intervalo_batalha);
	
	// tem q perder valor para entrar na batalha 
	if (
		global.ponto_atual == global.intervalo_batalha 
		&& global.intervalo_batalha < 800 
		&& obj_player.movendo == true
	) 
	{
		// Entrando na batalha
		origem = room;
		origem_x = obj_player.x;
		origem_y = obj_player.y;
		direcao = obj_player.sprite_index;
		
		var t = instance_create_layer(x, y, "Player", obj_transicao);
		
		// definindo as telas de batalha
		var rooms = ds_list_create();
		ds_list_add(rooms, rm_batalha_inverno);
		ds_list_add(rooms, rm_batalha_outono);
		ds_list_add(rooms, rm_batalha_primavera);
		ds_list_add(rooms, rm_batalha_verao);
		
		var destino_ = ds_list_find_value(rooms, irandom(ds_list_size(rooms)))
		
		t.destino = rm_batalha_verao;
		t.xx = 100;
		t.yy = 200;
		t.cor = c_white;
		t.vel = 0.05;
		
		global.batalha = true;
		global.intervalo_batalha = 500;
	}
}

if (room == rm_batalha_verao)
{
	// Saind da batalha
	if (global.batalha == false)
	{
		var t = instance_create_layer(x, y, "Player", obj_transicao);
		t.destino = origem;
		t.xx = origem_x;
		t.yy = origem_y;
		t.direcao = direcao;
		/*
		t.cor = c_lime;
		t.vel = 0.01;
		*/
	}
	
	// estou na batalha
	// checando se ainda há inimigos
	if (!instance_exists(obj_enemy) && fimbatalha == false)
	{
		fimbatalha = true;
		mostrar_exp = true;
		alarm[0] = room_speed * 3;
	}
}