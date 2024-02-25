function control_check_pressed()
{
	if (obj_decomp_console.active)
		return false;
		
	var control = argument0
	if (control < 0 || control > 2)
	    return 0;
	return global.control_pressed[control];
}
