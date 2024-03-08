if (camera_get_view_y(view_camera[0]) <= 0)
{
    image_alpha = 0
    oalpha = 0
}
if (camera_get_view_y(view_camera[0]) > 0)
{
    a = (oalpha - ((top / camera_get_view_y(view_camera[0])) * oalpha))
    if (a > 0)
        image_alpha = a
    else
        image_alpha = 0
}
