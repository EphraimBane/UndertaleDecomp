function scr_onscreen()
{
	onscreen = false
	if (x > (__view_get(VIEW_PROP_CAM_X, view_current) - argument0) && x < ((__view_get(VIEW_PROP_CAM_X, view_current) + __view_get(VIEW_PROP_CAM_WIDTH, view_current)) + argument0))
	{
	    if (y < ((__view_get(VIEW_PROP_CAM_HEIGHT, view_current) + __view_get(VIEW_PROP_CAM_Y, view_current)) + argument1) && y > (__view_get(VIEW_PROP_CAM_Y, view_current) - argument1))
	        onscreen = true
	}
}
