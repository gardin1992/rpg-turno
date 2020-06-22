/// @description 

draw_self(); // desenhando o player

if (room == rm_batalha_verao)
{
	// supeior esquerda do player
	var xx = x - sprite_xoffset;
	var yy = y - sprite_yoffset;
	vida = (hp / max_hp) * 100;
	energia_ = (energia / max_energia) * 100;

	// desenhando barra de vida
	
	if (estado != enemyState.ATACANDO)
	{
		#region HEALT
			var pg_left_x = xx - 50;
			var pg_left_y = yy - 140;
		
			var l_table = instance_create_layer(pg_left_x - 6, pg_left_y - 6, "Player", obj_battle_pg_table);
			l_table.depth = 0;
	
			var l_left = instance_create_layer(pg_left_x, pg_left_y, "Player", obj_battle_pg_healt_left);
			l_left.depth = -300;

			var pg_center_x = pg_left_x + 20;
			var l_center = instance_create_layer(pg_center_x, pg_left_y, "Player", obj_battle_pg_10_10);
			l_center.depth = -400;
	
			var pg_center_width = 80;
			var pg_right_x = pg_left_x + 20 + pg_center_width;
			var l_right = instance_create_layer(pg_right_x, pg_left_y, "Player", obj_battle_pg_healt_right);
			l_right.depth = -300;
		#endregion
		
		#region MANA
			var pg_mana_left_x = xx - 50;
			var pg_mana_left_y = yy - 90
		
			var l_table = instance_create_layer(pg_mana_left_x - 6, pg_mana_left_y - 6, "Player", obj_battle_pg_mana_table);
			l_table.depth = 0;
	
			var l_left = instance_create_layer(pg_mana_left_x, pg_mana_left_y, "Player", obj_battle_pg_mana_left);
			l_left.depth = -300;

			var pg_center_x = pg_mana_left_x + 20;
			var l_center = instance_create_layer(pg_center_x, pg_mana_left_y, "Player", obj_battle_pg_mana_8);
			l_center.depth = -400;
	
			var pg_center_width = 80;
			var pg_right_x = pg_mana_left_x + 20 + pg_center_width;
			var l_right = instance_create_layer(pg_right_x, pg_mana_left_y, "Player", obj_battle_pg_mana_right);
			l_right.depth = -300;
		#endregion
		
		/*
		#region ENERGIA
			var l_table = instance_create_layer(pg_left_x - 6, pg_left_y - 6, "Player", obj_battle_pg_table);
			l_table.depth = 0;
	
			var l_left = instance_create_layer(pg_left_x, pg_left_y, "Player", obj_battle_pg_healt_left);
			l_left.depth = -300;

			var pg_center_x = pg_left_x + 20;
			var l_center = instance_create_layer(pg_center_x, pg_left_y, "Player", obj_battle_pg_10_10);
			l_center.depth = -400;
	
			var pg_center_width = 80;
			var pg_right_x = pg_left_x + 20 + pg_center_width;
			var l_right = instance_create_layer(pg_right_x, pg_left_y, "Player", obj_battle_pg_healt_right);
			l_right.depth = -300;
		#endregion
		*/
		
		// desenhando barra de mana
		// draw_healthbar(xx - 20, y + 5, xx + sprite_width + 20, y + 15, energia_, c_dkgray, c_blue, c_aqua, 0, true, true);
	
		// desenhando barra de energia
		draw_healthbar(xx - 20, y + 5, xx + sprite_width + 20, y + 15, energia_, c_dkgray, c_blue, c_aqua, 0, true, true);
	}
}
