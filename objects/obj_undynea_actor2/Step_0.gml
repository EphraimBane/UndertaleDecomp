if (d == 0)
    scr_depth()
if (fun == false)
{
    myinteract = 0
    if (hhspeed == 0 && vhspeed == 0)
    {
        image_index = 0
        image_speed = 0
    }
    if (abs(hhspeed) > 0 || abs(vhspeed) > 0)
    {
        image_speed = 0.2
        if (image_index == 1 || image_index == 3)
            snd_play(snd_undynestep)
    }
}
gg = (room_width - camera_0_width)
hh = (room_height - camera_0_height)
if (camera_0_x >= 0)
{
    x = (xhome + floor((camera_0_x - (camera_0_x * scrollspeed))))
    g = (x - xprevious)
}
if (camera_0_x >= gg)
{
    x = (xhome + floor((gg - (gg * scrollspeed))))
    g = (x - xprevious)
}
if (camera_0_y >= 0)
    y = (yhome + floor((camera_0_y - (camera_0_y * scrollspeed))))
if (camera_0_y >= hh)
    y = (yhome + floor((hh - (hh * scrollspeed))))
xhome += hhspeed
yhome += vhspeed
