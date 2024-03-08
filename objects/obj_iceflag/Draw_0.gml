draw_self_custom(0, 9999, 0, (ystart + 40))
if (yoff > 1)
    y -= 1
yoff -= 1
if (x > (__view_get(VIEW_PROP_CAM_X, 0) + __view_get(VIEW_PROP_CAM_WIDTH, 0)))
    instance_destroy()
if (x < (__view_get(VIEW_PROP_CAM_X, 0) - 10))
    instance_destroy()
if (y > ((__view_get(VIEW_PROP_CAM_Y, 0) + __view_get(VIEW_PROP_CAM_HEIGHT, 0)) + 30))
    instance_destroy()
if (y < __view_get(VIEW_PROP_CAM_Y, 0))
    instance_destroy()
