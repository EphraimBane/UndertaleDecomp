myview = __view_get(VIEW_PROP_CAM_X, 0)
gg = (room_width - __view_get(VIEW_PROP_CAM_WIDTH, 0))
if (myview < 0)
    myview = 0
if (__view_get(VIEW_PROP_CAM_X, 0) <= 0)
    x = xhome
if (__view_get(VIEW_PROP_CAM_X, 0) > 0)
    x = (xhome + floor((__view_get(VIEW_PROP_CAM_X, 0) - (__view_get(VIEW_PROP_CAM_X, 0) * scrollspeed))))
if (__view_get(VIEW_PROP_CAM_X, 0) >= gg)
    x = (xhome + floor((gg - (gg * scrollspeed))))
