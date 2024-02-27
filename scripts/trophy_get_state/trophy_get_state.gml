function trophy_get_state(_trophy_id)
{
	var trophy_id = _trophy_id
	var state = ds_map_find_value(global.trophy_state, trophy_id)
	if (!is_undefined(state))
	    return state;
	else
	    return 0;
}
