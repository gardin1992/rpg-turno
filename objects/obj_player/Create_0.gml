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
init_x = 0;
init_y = 0;

// Definindo as Sprites
sprite_left = spr_warrior_left;
sprite_right = spr_warrior_right;
sprite_back = spr_warrior_back;
sprite_right = spr_warrior_right;

sprite_correndo = spr_warrior_run;
sprite_luta = spr_warrior_idle_right;
sprite_atacando = spr_warrior_attack_right_01;
sprite_defendendo = spr_warrior_right;
sprite_morrendo = spr_warrior_right;

inimigo_atual = noone;
estado = heroState.NORMAL;

// Atributes
max_hp = 50;
hp = max_hp;
max_sp = 10;
sp = max_sp;
atq = 50;
def = 2;
agi = 3;
max_energia = 100;
energia = irandom(max_energia);
max_exp = 100;
ex = 0;
lvl = 1;
sorte = .003

defendendo = false;


