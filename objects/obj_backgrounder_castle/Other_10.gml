// Vultu: I have no idea what the fuck toby was doing here
if (__view_get(0, 0) >= 0)
    __background_set(3, 4, (spr_moldsmal + round((__view_get(0, 0) - (__view_get(0, 0) * scrollspeed)))))
gg = (room_width - __view_get(2, 0))
if (__view_get(0, 0) >= gg)
    __background_set(3, 4, (spr_moldsmal + round((gg - (gg * scrollspeed)))))
