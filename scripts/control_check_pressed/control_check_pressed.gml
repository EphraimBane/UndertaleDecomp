/// @func	control_check_pressed(control)
/// @arg	control
function control_check_pressed(_control)
{
	if (obj_decomp_console.active)
		return false;
		
	var control = _control
	if (control < 0 || control > 2)
	    return false;
	return global.control_pressed[control];
}
