function scr_heartr_holdu()
{
	if (global.osflavor <= OSFlavors.Mac && keyboard_check(vk_up))
	    return 1;
	if (global.osflavor >= OSFlavors.Playstation && gamepad_axis_value((obj_time.j_ch - 1), gp_axisrv) <= -0.6)
	    return 1;
	return 0;
}
