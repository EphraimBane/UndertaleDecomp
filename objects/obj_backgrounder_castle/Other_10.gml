// Vultu: I have no idea what the fuck toby was doing here
if (view_xview_get(0) >= 0)
    __background_set(BG_PROP_X, 4, (200 + round((view_xview_get(0) - (view_xview_get(0) * scrollspeed)))))
gg = (room_width - view_wview_get(0))
if (view_xview_get(0) >= gg)
    __background_set(BG_PROP_X, 4, (200 + round((gg - (gg * scrollspeed)))))
