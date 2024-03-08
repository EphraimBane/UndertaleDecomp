y = 0
if (camera_0_x >= 0)
    x = (floor((camera_0_x - (camera_0_x * scrollspeed))) + 150)
gg = (room_width - camera_0_width)
if (camera_0_x >= gg)
    x = (floor((gg - (gg * scrollspeed))) + 150)
