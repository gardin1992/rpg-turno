/// @description Escurecer a tela por cima de tudo
// You can write your code in this editor

if (escurecer == true) 
{
	alpha += vel;
}

if (alpha >= 1)
{
	room_goto(destino);
}

if (escurecer == false)
{
	alpha -= vel;
}


draw_set_alpha(alpha);

if (alpha <= 0 && escurecer == false)
{
	instance_destroy();
	obj_player.ativo = true;
}
	
draw_set_color(cor);
draw_rectangle(0, 0, view_wport[0] * 2, view_hport[0] * 2, false);

draw_set_alpha(1);
draw_set_color(c_white);