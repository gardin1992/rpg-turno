/// @description saindo da ds_list

var pos = ds_list_find_index(global.inimigo_batalha, self);

ds_list_delete(global.inimigo_batalha, pos);

obj_control.exp_atual += ex;