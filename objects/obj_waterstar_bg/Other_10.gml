if (f_test == 1)
{
    myview = camera_0_x
    myview_b = camera_0_x
    if (g_heart < 4 && obj_mainchara.x > (room_width - 160))
        myview -= 140
    g_heart += 1
    gg = (room_width - camera_0_width)
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
    if (camera_0_x >= 0)
        x = (xhome + round((camera_0_x - (camera_0_x * scrollspeed))))
    if (camera_0_x >= gg)
        x = (xhome + round((gg - (gg * scrollspeed))))
}
