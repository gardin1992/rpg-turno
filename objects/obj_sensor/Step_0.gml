/// @description Cria uma instancia de transição
// You can write your code in this editor

if (place_meeting(x, y, obj_player && active == true))
{
	obj_player.ativo = false;
	var t = instance_create_layer(x, y, "Player", obj_transicao);
	t.destino = destino;
	t.xx = xx;
	t.yy = yy;
	
	active = false;
}