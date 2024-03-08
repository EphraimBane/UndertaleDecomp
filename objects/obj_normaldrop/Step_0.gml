if (y > goal)
    event_user(1)
if (dont == 0)
{
    if (x < (camera_get_view_x(view_camera[0]) - 40))
        x += 361
    if (x > (camera_get_view_x(view_camera[0]) + 360))
        x -= 361
}
