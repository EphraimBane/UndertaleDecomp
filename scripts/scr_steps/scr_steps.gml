/// @func	scr_steps(unknown1, unknown2, unknown3, area_kills_pointer)
/// @desc	Unsure?? Need to look into this is a TODO
function scr_steps(_unknown1, _unknown2, _unknown3, _area_kills_pointer)
{
	FL_AreaKillsPointer = _area_kills_pointer
	if ((_unknown3 - global.flag[_area_kills_pointer]) > 0)
	{
	    populationfactor = (_unknown3 / (_unknown3 - global.flag[_area_kills_pointer]))
	    if (populationfactor > 8)
	        populationfactor = 8
	    steps = ((_unknown1 + round(random(_unknown2))) * populationfactor)
	}
	else
	{
	    if (alldead == 0 || alldead == 1)
	        steps = 20
	    else
	        steps = ((_unknown1 + round((_unknown2 / 2))) * 5)
	    if (alldead == 0)
	        alldead = 1
	}
}
