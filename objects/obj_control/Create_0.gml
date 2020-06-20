/// @description Iniciando variaveis

global.batalha = false;
global.intervalo_batalha = 1000;	// frames, limite para a batalha
global.ponto_atual = 0;			// onde eu estou agora

global.inimigos = 0
global.qtdinimigos = 0;

posicao = 0; // minha posicao na lista
global.inimigo_batalha = ds_list_create();

fimbatalha = false;

origem = 0;
origem_x = 0;
origem_y = 0;  
direcao = 0;