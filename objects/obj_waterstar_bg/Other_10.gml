if (f_test == 1)
{
    myview = camera_get_view_x(view_camera[0])
    myview_b = camera_get_view_x(view_camera[0])
    if (g_heart < 4 && obj_mainchara.x > (room_width - 160))
        myview -= 140
    g_heart += 1
    gg = (room_width - camera_get_view_width(view_camera[0]))
    if (myview < 0)
        myview = 0
    if (x < (myview - 20) && myview < gg)
    {
        x += 350
        xhome += 350
    }
    if (x > (myview + 340))
    {
        x -= 350
        xhome -= 350
    }
    if (camera_get_view_x(view_camera[0]) >= 0)
        x = (xhome + round((camera_get_view_x(view_camera[0]) - (camera_get_view_x(view_camera[0]) * scrollspeed))))
    if (camera_get_view_x(view_camera[0]) >= gg)
        x = (xhome + round((gg - (gg * scrollspeed))))
}
