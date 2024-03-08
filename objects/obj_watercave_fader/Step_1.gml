if (camera_get_view_x(view_camera[0]) > 0)
{
    a = (oalpha - (camera_get_view_x(view_camera[0]) / top))
    if (a > 0)
        image_alpha = a
    else
        image_alpha = 0
}
