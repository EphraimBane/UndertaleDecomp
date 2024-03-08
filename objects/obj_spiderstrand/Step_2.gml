myview = camera_0_x
gg = (room_width - camera_0_width)
if (myview < 0)
    myview = 0
if (camera_0_x <= 0)
    x = xhome
if (camera_0_x > 0)
    x = (xhome + floor((camera_0_x - (camera_0_x * scrollspeed))))
if (camera_0_x >= gg)
    x = (xhome + floor((gg - (gg * scrollspeed))))
