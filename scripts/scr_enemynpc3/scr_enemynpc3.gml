function scr_enemynpc3()
{
	if (global.plot > 191)
	{
	    if (FL_TruePacifist == 1 || FL_DisableRandomEncounters == 1)
	    {
	        if (FL_HotlandKillsCounter == 0 && global.flag[206] == 0)
	            return 1;
	        else
	            return 0;
	    }
	    else
	        return 0;
	}
	else
	    return 0;
}
