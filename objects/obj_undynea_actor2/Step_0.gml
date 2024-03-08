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
gg = (room_width - camera_get_view_width(view_camera[0]))
hh = (room_height - camera_get_view_height(view_camera[0]))
if (camera_get_view_x(view_camera[0]) >= 0)
{
    x = (xhome + floor((camera_get_view_x(view_camera[0]) - (camera_get_view_x(view_camera[0]) * scrollspeed))))
    g = (x - xprevious)
}
if (camera_get_view_x(view_camera[0]) >= gg)
{
    x = (xhome + floor((gg - (gg * scrollspeed))))
    g = (x - xprevious)
}
if (camera_get_view_y(view_camera[0]) >= 0)
    y = (yhome + floor((camera_get_view_y(view_camera[0]) - (camera_get_view_y(view_camera[0]) * scrollspeed))))
if (camera_get_view_y(view_camera[0]) >= hh)
    y = (yhome + floor((hh - (hh * scrollspeed))))
xhome += hhspeed
yhome += vhspeed
