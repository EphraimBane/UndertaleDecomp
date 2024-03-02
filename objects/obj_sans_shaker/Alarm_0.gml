__view_set(VIEW_PROP_CAM_X, 0, (choose(-1, 1) * intensity))
__view_set(VIEW_PROP_CAM_Y, 0, (choose(1, -1) * intensity))
intensity -= 1
if (intensity == 0)
    instance_destroy()
alarm[0] = 1
