if (image_alpha < 1)
    image_alpha += 0.2
image_angle += ang
if (y > (camera_get_view_y(view_camera[0]) + 245))
    instance_destroy()
if (x < (camera_get_view_x(view_camera[0]) - 4))
    instance_destroy()
if (x > (camera_get_view_x(view_camera[0]) + 324))
    instance_destroy()
