/// @description Iniciando variaveis

global.batalha = false;
global.intervalo_batalha = 1000;	// frames, limite para a batalha
global.ponto_atual = 0;			// onde eu estou agora

global.inimigos = 0
global.qtdinimigos = 0;

posicao_h = 0; // posicao de herois
posicao_i = 0; // posicao inimigo
posicao = 0; // minha posicao da acao

momento = 0; // momento da batalha
heroi_atual = 0;
inimigo_ataque = 0;

fimbatalha = false;

exp_atual = 0;
exp_player = 0;
mostrar_exp = false;

origem = 0;
origem_x = 0;
origem_y = 0;  
direcao = 0;

depth = -1000;

instance_healt = 0;
instance_armor = 0;
instance_menu = 0;

btn_select = noone;
btn_select_hero = noone;
btn_select_enemy = noone;
