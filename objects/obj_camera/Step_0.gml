/// @description Camera fluida

// verifica se possui um alvo
if (!instance_exists(alvo)) exit;

if (keyboard_check_released(vk_enter)) mudar = !mudar;

if (mudar)
{
	//x = lerp(x, alvo.x, .2);
	x = alvo.x;
	y = alvo.y;
	//y = lerp(y, alvo.y, .2);
}
else 
{
	x = alvo.x;
	y = alvo.y;
	// x = lerp(x, mouse_x, .03);
	// y = lerp(y, mouse_y, .03);
}

