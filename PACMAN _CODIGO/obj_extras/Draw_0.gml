/// @description PUNTOS Y VIDAS
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_text);
draw_text(32,16,"SCORE: "+string(global.Puntos));

//VIDAS
draw_text(room_width/2,16,"VIDAS: ");
for(var i = 0; i< global.Vidas; i+=1)
	{
	draw_sprite_stretched(spr_player_right,2,room_width/2+string_width("VIDAS: ")+(i*33),16,32,32)
	}
//READY
if (audio_is_playing(snd_intro))
{
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_ready);
if(room == rm_lvl_1)
draw_text(room_width/2+128,room_height/2+8,"READY!");

if(room == rm_lvl_2)				//cambibar posicion de mapa 2
draw_text(room_width/2+128,room_height/2+8,"READY!");
}
//dibujar bonus
 if(global.Bonus)
	{
		draw_sprite(spr_bonus,0,room_width-64,0);
	}

if (global.Vidas==0)
	{
	draw_set_color(c_red);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(room_width/2,room_height/2,"GAME OVER");
	
	}