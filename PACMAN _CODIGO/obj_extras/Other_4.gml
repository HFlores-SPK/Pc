/// @description el nivel empieza nuevamente
if room== rm_lvl_1 exit;


audio_play_sound(snd_intro,10,false);
instance_deactivate_object(obj_enemy);

global.Golpe = false;
global.Power = false;
global.Bonus = false;

alarm [0] = room_speed*10; //crear bono
alarm [1] = room_speed*15;
room_speed =50;

