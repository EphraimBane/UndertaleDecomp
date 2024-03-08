function scr_onscreen()
{
	onscreen = false
	if (x > (camera_get_view_x(view_camera[view_current]) - argument0) && x < ((camera_get_view_x(view_camera[view_current]) + camera_get_view_width(view_camera[view_current])) + argument0))
	{
	    if (y < ((camera_get_view_height(view_camera[view_current]) + camera_get_view_y(view_camera[view_current])) + argument1) && y > (camera_get_view_y(view_camera[view_current]) - argument1))
	        onscreen = true
	}
}
