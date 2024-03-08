myview = camera_get_view_x(view_camera[0])
gg = (room_width - camera_get_view_width(view_camera[0]))
if (myview < 0)
    myview = 0
if (camera_get_view_x(view_camera[0]) <= 0)
    x = xhome
if (camera_get_view_x(view_camera[0]) > 0)
    x = (xhome + floor((camera_get_view_x(view_camera[0]) - (camera_get_view_x(view_camera[0]) * scrollspeed))))
if (camera_get_view_x(view_camera[0]) >= gg)
    x = (xhome + floor((gg - (gg * scrollspeed))))
