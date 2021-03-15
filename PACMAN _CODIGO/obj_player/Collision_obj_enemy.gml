/// @description GOLPE O ATAQUE
if(other.sprite_index==spr_enemy_scared) //si la variable del poder tomo el poder agrega 100 puntos
{
	global.Puntos+=100;
	audio_play_sound(snd_enemy_kill,10,false)
	with(other)
	{
	x	=xstart;	//enemigo regresa a su posicion inicial
	y	=ystart;
	v	=4;
	speed=v;
	sprite_index=	spr_enemy;//regresa y se pone su mismo color al inicio del juego ya no sigue fantasma
	image_index=col;
	image_speed=0;
	
	
	}
}
else //de lo contrario  si no recibe golpe  la vida 
if ! (global.Golpe) and (x =other.x || y=other.y)
	{
		audio_stop_all();
		audio_play_sound(snd_dead,10,false); //cuando muere pacman
		
		//reiniciar velovidad
		room_speed=50;
		obj_control.alarm[1] =room_speed*15;
		
		
		speed=0;
		global.Vidas -=1;
		sprite_index=	spr_player_dead;
		image_speed=	1;
		global.Golpe=true;
		
		with(obj_bonus)
		{
		instance_destroy(); 
		};
	}