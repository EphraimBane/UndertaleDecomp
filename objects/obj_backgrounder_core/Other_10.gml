y = 0
if (__view_get(VIEW_PROP_CAM_X, 0) >= 0)
    x = (floor((__view_get(VIEW_PROP_CAM_X, 0) - (__view_get(VIEW_PROP_CAM_X, 0) * scrollspeed))) + 150)
gg = (room_width - __view_get(VIEW_PROP_CAM_WIDTH, 0))
if (__view_get(VIEW_PROP_CAM_X, 0) >= gg)
    x = (floor((gg - (gg * scrollspeed))) + 150)
