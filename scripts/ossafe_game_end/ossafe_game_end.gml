function ossafe_game_end()
{
	if (global.osflavor <= OS_FLAVOR_UNKNOWN_PLATFORM)
	    game_end()
	else
	    game_restart()
}
