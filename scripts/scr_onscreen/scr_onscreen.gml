function scr_onscreen()
{
	onscreen = false
	if (x > (camera_current_x - argument0) && x < ((camera_current_x + camera_current_width) + argument0))
	{
	    if (y < ((camera_get_view_height + camera_current_y) + argument1) && y > (camera_current_y - argument1))
	        onscreen = true
	}
}
