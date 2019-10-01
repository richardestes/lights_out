/// @description Insert description here
// You can write your code in this editor
if (o_player.sprite_idle == sPlayerIdleBulb){
	o_player.sprite_idle = sPlayerIdle;
	o_player.sprite_run = sPlayerRun;
	sprite_index = sLampBulb;
	room_goto(targetRoom);
	o_player.x = targetX;
	o_player.y = targetY;
}