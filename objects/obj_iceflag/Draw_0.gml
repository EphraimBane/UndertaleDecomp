draw_self_custom(0, 9999, 0, (ystart + 40))
if (yoff > 1)
    y -= 1
yoff -= 1
if (x > (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])))
    instance_destroy()
if (x < (camera_get_view_x(view_camera[0]) - 10))
    instance_destroy()
if (y > ((camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])) + 30))
    instance_destroy()
if (y < camera_get_view_y(view_camera[0]))
    instance_destroy()
