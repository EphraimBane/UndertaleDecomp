// Vultu: I have no idea what the fuck toby was doing here
if (__view_get(VIEW_PROP_CAM_X, 0) >= 0)
    __background_set(3, 4, (200 + round((__view_get(VIEW_PROP_CAM_X, 0) - (__view_get(VIEW_PROP_CAM_X, 0) * scrollspeed)))))
gg = (room_width - __view_get(VIEW_PROP_CAM_WIDTH, 0))
if (__view_get(VIEW_PROP_CAM_X, 0) >= gg)
    __background_set(3, 4, (200 + round((gg - (gg * scrollspeed)))))
