function scr_enemynpc3()
{
	if (global.plot > 191)
	{
	    if (FL_TruePacifist == true || FL_DisableRandomEncounters == 1)
	    {
	        if (FL_HotlandKillsCounter == 0 && global.flag[206] == 0)
	            return true;
	        else
	            return false;
	    }
	    else
	        return false;
	}
	else
	    return false;
}
