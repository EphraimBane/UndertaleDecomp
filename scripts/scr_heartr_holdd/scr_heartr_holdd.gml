function scr_heartr_holdd()
{
	if (global.osflavor <= OS_FLAVOR_UNKNOWN_PLATFORM && keyboard_check(vk_down))
	    return 1;
	if (global.osflavor >= OS_FLAVOR_PLAYSTATION && gamepad_axis_value((obj_time.j_ch - 1), gp_axisrv) >= 0.6)
	    return 1;
	return 0;
}
