yy = camera_get_view_y(view_camera[0])
if (yy < 0)
    yy = 0
if (yy > (room_height - 240))
    yy = (room_height - 240)
y = (yy - minusy)
