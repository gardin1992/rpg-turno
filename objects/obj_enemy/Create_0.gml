/// @description Iniciando variaveis
enum enemyState {
	NORMAL,
	ATACANDO,
	DEFENDENDO,
}

// Atributes
max_hp = 10;
hp = max_hp;
atq = 5;
def = 1;
agi = 3; // inteligencia
max_energia = 100;
energia = 0;
ex = 20;
// lvl = 1;

dano = false;
sumir = false;
estado = enemyState.NORMAL;
heroi_atacar = 0;

// posicao na lista
numeroz = 0;

defendendo = false;

sprite_luta = spr_enemyIdle;
sprite_atacando = spr_enemy_01_ataque;
sprite_defendendo = spt_enemy_01_defendendo;
sprite_morrendo = spr_enemy_01_dead;

morrer = false;
