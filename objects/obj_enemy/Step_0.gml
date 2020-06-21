/// @description Insert description here
// You can write your code in this editor
if (dano)
{
	if (sumir) image_alpha -= .2;
	
	if (!sumir) image_alpha += .2;
	
	if (image_alpha<= 0) sumir = false;
	if (image_alpha >= 1) sumir = true;
}

obj_enemy.image_xscale = -1;

 // Morrendo
 if (hp <= 0)  instance_destroy();
 
 
switch(estado)
{
	case enemyState.NORMAL:
		if (!defendendo) {
			sprite_index = sprite_luta;
			image_speed = 0;
		}
		
		energia += agi / 5;
		if (energia >= max_energia) energia = max_energia;
	
		var n_heroi = irandom(ds_list_size(global.heroi_batalha) - 1);
		
		heroi_atacar = ds_list_find_value(global.heroi_batalha, max(0, n_heroi));
		
		if (
			heroi_atacar != undefined
			&& obj_control.inimigo_ataque == 0
			&& obj_control.heroi_atual == 0
			&& obj_control.heroi_atual.estado != heroState.ATACANDO
			&& !dano
			&& energia == max_energia
		)
		{
			obj_control.inimigo_ataque = false;
			estado = choose(enemyState.ATACANDO, enemyState.ATACANDO, enemyState.DEFENDENDO);
			energia = 0;
		}
	break;
	
	case enemyState.ATACANDO:
		if (defendendo) {
			defendendo = false;
			def /= 2;
		}
		
		energia = 0;
			
		sprite_index = sprite_atacando;
		image_speed = 1;
		
		var n_img = image_number - 1;
			
		if (image_index >= n_img)
		{
			heroi_atacar.hp -= max(0, (atq - heroi_atacar.def));
			obj_control.inimigo_ataque = 0;
			estado = heroState.NORMAL;
		}
	break;
	
	case enemyState.DEFENDENDO:
		if (!defendendo) {
			def *= 2;
			defendendo = true;
			energia = 0;
		
			sprite_index = sprite_defendendo;
			image_speed = 1;
		
			var n_img = image_number - 1;
			
			if (image_index >= n_img)
			{
				
			}
		}
		
		obj_control.inimigo_ataque = 0;
		estado = enemyState.NORMAL;
		show_debug_message("DEFENDENDO: Def: " + string(def));
	break;
}