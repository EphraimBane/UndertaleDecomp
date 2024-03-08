// Vultu: I have no idea what the fuck toby was doing here
if (camera_get_view_x(view_camera[0]) >= 0)
    __background_set(3, 4, (200 + round((camera_get_view_x(view_camera[0]) - (camera_get_view_x(view_camera[0]) * scrollspeed)))))
gg = (room_width - camera_get_view_width(view_camera[0]))
if (camera_get_view_x(view_camera[0]) >= gg)
    __background_set(3, 4, (200 + round((gg - (gg * scrollspeed)))))
