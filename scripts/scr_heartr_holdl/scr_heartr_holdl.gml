function scr_heartr_holdl()
{
	if (global.osflavor <= OS_FLAVOR_UNKNOWN_PLATFORM && keyboard_check(vk_left))
	    return 1;
	if (global.osflavor >= OS_FLAVOR_PLAYSTATION && gamepad_axis_value((obj_time.j_ch - 1), gp_axisrh) <= -0.6)
	    return 1;
	return 0;
}
