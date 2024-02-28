function cmd_unlock_cam()
{
	if (view_get_visible(7))
		view_set_visible(7, false);
	else
	{
		var cam = view_get_camera(7);
	
		camera_set_view_size(cam, 320, 240);
	
		view_set_visible(7, true);
	}
}