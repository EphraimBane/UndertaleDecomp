yy = __view_get(VIEW_PROP_CAM_Y, 0)
if (yy < 0)
    yy = 0
if (yy > (room_height - 240))
    yy = (room_height - 240)
y = (yy - minusy)
