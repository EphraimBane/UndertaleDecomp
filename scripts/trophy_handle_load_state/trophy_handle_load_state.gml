function trophy_handle_load_state()
{
	if (os_type == os_ps4 || os_type == os_psvita)
	{
	    if ds_map_find_value(async_load, "succeeded")
	    {
	        var states = ds_map_find_value(async_load, "trophystates")
	        var count = array_length_1d(states)
	        if (count > 1)
	            ds_map_set(global.trophy_state, "item_1", states[1] == 1)
	        if (count > 2)
	            ds_map_set(global.trophy_state, "item_2", states[2] == 1)
	        if (count > 3)
	            ds_map_set(global.trophy_state, "item_3", states[3] == 1)
	        if (count > 4)
	            ds_map_set(global.trophy_state, "item_4", states[4] == 1)
	        if (count > 5)
	            ds_map_set(global.trophy_state, "ruins", states[5] == 1)
	        if (count > 6)
	            ds_map_set(global.trophy_state, "mouse", states[6] == 1)
	        if (count > 7)
	            ds_map_set(global.trophy_state, "tundra", states[7] == 1)
	        if (count > 8)
	            ds_map_set(global.trophy_state, "spaghetti", states[8] == 1)
	        if (count > 9)
	            ds_map_set(global.trophy_state, "water", states[9] == 1)
	        if (count > 10)
	            ds_map_set(global.trophy_state, "rain", states[10] == 1)
	        if (count > 11)
	            ds_map_set(global.trophy_state, "fire", states[11] == 1)
	        if (count > 12)
	            ds_map_set(global.trophy_state, "fire_2", states[12] == 1)
	        if (count > 13)
	            ds_map_set(global.trophy_state, "fire_3", states[13] == 1)
	        if (count > 14)
	            ds_map_set(global.trophy_state, "core", states[14] == 1)
	        if (count > 15)
	            ds_map_set(global.trophy_state, "donate_1", states[15] == 1)
	        if (count > 16)
	            ds_map_set(global.trophy_state, "donate_2", states[16] == 1)
	        if (count > 17)
	            ds_map_set(global.trophy_state, "donate_3", states[17] == 1)
	        if (count > 18)
	            ds_map_set(global.trophy_state, "donate_4", states[18] == 1)
	        if (count > 19)
	            ds_map_set(global.trophy_state, "donate_5", states[19] == 1)
	        if (count > 20)
	            ds_map_set(global.trophy_state, "donate_6", states[20] == 1)
	        if (count > 21)
	            ds_map_set(global.trophy_state, "donate_7", states[21] == 1)
	        if (count > 22)
	            ds_map_set(global.trophy_state, "donate_8", states[22] == 1)
	        if (count > 23)
	            ds_map_set(global.trophy_state, "donate_9", states[23] == 1)
	        if (count > 24)
	            ds_map_set(global.trophy_state, "donate_10", states[24] == 1)
	        if (count > 25)
	            ds_map_set(global.trophy_state, "donate_11", states[25] == 1)
	        if (count > 26)
	            ds_map_set(global.trophy_state, "donate_12", states[26] == 1)
	        if (count > 27)
	            ds_map_set(global.trophy_state, "donate_13", states[27] == 1)
	        if (count > 28)
	            ds_map_set(global.trophy_state, "donate_14", states[28] == 1)
	        if (count > 29)
	            ds_map_set(global.trophy_state, "donate_15", states[29] == 1)
	    }
	}
}
