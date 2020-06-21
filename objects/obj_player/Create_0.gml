/// @description Definando as variaveis de controler

enum heroState {
	NORMAL,
	ATACANDO,
	DEFENDENDO,
	MORRENDO,
	FUGINDO,
}


spd = 4;
h_spd = 0;
v_spd = 0;
ativo = true;
movendo = false;

sprite_luta = spr_player_right;
sprite_atacando = spr_player_atacando;
sprite_defendendo = spr_player_defendendo;

inimigo_atual = noone;
estado = heroState.NORMAL;

// Atributes
max_hp = 50;
hp = max_hp;
// max_sp = 10;
// sp = max_sp;
atq = 50;
def = 2;
agi = 3;
max_energia = 100;
energia = irandom(max_energia);
// max_exp = 10;
ex = 0;
// lvl = 1;
// sorte = .003

defendendo = false;


