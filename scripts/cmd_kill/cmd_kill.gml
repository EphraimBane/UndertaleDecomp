function cmd_kill()
{
	global.hp = 0;
	room_goto(room_battle);
}