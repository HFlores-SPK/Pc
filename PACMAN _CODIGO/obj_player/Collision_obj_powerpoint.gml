/// @description OBTENER EL PODER
alarm[0]=room_speed*5;//activar 5 segundos la velocidad
global.Puntos +=50;
global.Power = true;
audio_play_sound(snd_comiendo,10,false)	

with(obj_enemy)
{
	sprite_index= spr_enemy_scared; 
	image_speed=0;
	image_index=0;
	v	=	2;
	speed =2;
}; 
with	(other)
{
instance_destroy();
}