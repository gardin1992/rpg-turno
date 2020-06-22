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
	
	#region HEALT
		var pg_left_x = xx - 50;
		var pg_left_y = yy - 20;
		
		var l_table_healt = instance_create_layer(pg_left_x - 6, pg_left_y - 6, "Player", obj_battle_pg_table_enemy);
		l_table_healt.depth = 0;
	
		var l_left_healt = instance_create_layer(pg_left_x, pg_left_y, "Player", obj_battle_pg_healt_left_enemy);
		l_left_healt.depth = -300;

		var pg_healt_center_x = pg_left_x + 20;
		var l_center_healt = instance_create_layer(pg_healt_center_x, pg_left_y, "Player", obj_battle_pg_healt_8_enemy);
		l_center_healt.depth = -400;
	
		var pg_center_width_healt = 80;
		var pg_right_x_healt = pg_left_x + 20 + pg_center_width_healt;
		var l_right_healt = instance_create_layer(pg_right_x_healt, pg_left_y, "Player", obj_battle_pg_healt_right_enemy);
		l_right_healt.depth = -300;
	#endregion
	/*
	#region STAMINA
		var pg_stamina_left_x = xx - 50;
		var pg_stamina_left_y = yy + sprite_height + 20;
			
		var l_table_stamina = instance_create_layer(pg_stamina_left_x - 6, pg_stamina_left_y - 6, "Player", obj_battle_pg_table_enemy);
		l_table_stamina.depth = 0;
	
		var l_left_stamina = instance_create_layer(pg_stamina_left_x, pg_stamina_left_y, "Player", obj_battle_pg_stamina_left_enemy);
		l_left_stamina.depth = -300;

		var pg_center_x_stamina = pg_stamina_left_x + 20;
		var l_center_stamina = instance_create_layer(pg_center_x_stamina, pg_stamina_left_y, "Player", obj_battle_pg_stamina_8_enemy);
		l_center_stamina.depth = -400;
	
		var pg_center_width_stamina = 80;
		var pg_right_x_stamina = pg_stamina_left_x + 20 + pg_center_width_stamina;
		var l_right_stamina = instance_create_layer(pg_right_x_stamina, pg_stamina_left_y, "Player", obj_battle_pg_stamina_right_enemy);
		l_right_stamina.depth = -300;
	#endregion
	*/
}
