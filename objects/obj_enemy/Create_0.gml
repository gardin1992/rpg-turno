/// @description Iniciando variaveis
enum enemyState {
	NORMAL,
	ATACANDO,
	DEFENDENDO,
	MORRENDO,
}

// Atributes
max_hp = 10;
hp = max_hp;
atq = 5;
def = 1;
agi = 3; // inteligencia
max_energia = 100;
energia = 0;
ex = 2;
// lvl = 1;

dano = false;
sumir = false;
estado = enemyState.NORMAL;
heroi_atacar = 0;

// posicao na lista
numeroz = 0;

sprite_luta = spr_enemyIdle;
sprite_atacando = spr_enemyIdle;
sprite_defendendo = spr_enemyIdle;
