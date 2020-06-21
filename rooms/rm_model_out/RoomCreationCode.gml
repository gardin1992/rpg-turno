if (!instance_exists(obj_camera))
{
	instance_create_layer(0, 0, "Player", obj_camera);
}

if (!instance_exists(obj_player))
{
	var player = instance_create_layer(400, 290, "Player", obj_player);
	player.depth = 100;
}

if (!instance_exists(obj_control))
{
	instance_create_layer(20, 20, "Player", obj_control);
}

if (room == rm_model_out)
{
	room_goto_next()
}