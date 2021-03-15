/// @description obtener bono
global.Puntos+=50;
global.Bonus=true;

audio_play_sound(snd_bonus,10,false);

with (other)
	{
	instance_destroy();
	}