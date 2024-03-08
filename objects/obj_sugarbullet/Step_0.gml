if (vspeed > 0)
    depth = 2
if (size < 1)
    size += 0.04
image_xscale = size
image_yscale = size
image_angle += ang
if (y > (camera_0_y + 250))
    instance_destroy()
if (x < (camera_0_x - 10))
    instance_destroy()
if (x > (camera_0_x + 320))
    instance_destroy()
