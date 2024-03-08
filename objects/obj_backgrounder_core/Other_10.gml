y = 0
if (camera_get_view_x(view_camera[0]) >= 0)
    x = (floor((camera_get_view_x(view_camera[0]) - (camera_get_view_x(view_camera[0]) * scrollspeed))) + 150)
gg = (room_width - camera_get_view_width(view_camera[0]))
if (camera_get_view_x(view_camera[0]) >= gg)
    x = (floor((gg - (gg * scrollspeed))) + 150)
