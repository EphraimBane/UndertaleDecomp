// Vultu: I have no idea what the fuck toby was doing here
if (view_xview(0) >= 0)
    __background_set(3, 4, (200 + round((view_xview(0) - (view_xview(0) * scrollspeed)))))
gg = (room_width - view_wview(0))
if (view_xview(0) >= gg)
    __background_set(3, 4, (200 + round((gg - (gg * scrollspeed)))))
