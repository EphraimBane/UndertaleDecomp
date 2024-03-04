/// @func	scr_steps(_base_steps, _random_steps, _population, _area_kills_pointer)
/// @desc	Calculates when to start an encounter based on the rooms "base steps" and "random steps". Does extra math depending on how many monsters have been killed.
function scr_steps(_base_steps, _random_steps, _population, _area_kills_pointer)
{
	FL_AreaKillsPointer = _area_kills_pointer
	if ((_population - global.flag[_area_kills_pointer]) > 0)
	{
	    populationfactor = (_population / (_population - global.flag[_area_kills_pointer]))
	    if (populationfactor > 8)
	        populationfactor = 8
	    steps = ((_base_steps + round(random(_random_steps))) * populationfactor)
	}
	else
	{
	    if (alldead == 0 || alldead == 1)
	        steps = 20
	    else
	        steps = ((_base_steps + round((_random_steps / 2))) * 5)
	    if (alldead == 0)
	        alldead = 1
	}
}
