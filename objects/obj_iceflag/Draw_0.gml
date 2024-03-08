draw_self_custom(0, 9999, 0, (ystart + 40))
if (yoff > 1)
    y -= 1
yoff -= 1
if (x > (camera_0_x + camera_0_width))
    instance_destroy()
if (x < (camera_0_x - 10))
    instance_destroy()
if (y > ((camera_0_y + camera_0_height) + 30))
    instance_destroy()
if (y < camera_0_y)
    instance_destroy()
