if (!instance_exists(obj_camera))
{
	instance_create_layer(0, 0, "Player", obj_camera);
}

if (!instance_exists(obj_control))
{
	instance_create_layer(20, 20, "Player", obj_control);
}

// definindo inimigos
global.inimigos = [obj_enemy, obj_enemy02];
global.qtdinimigos = 4;

if (room == rm_model_out)
{
	room_goto_next()
}