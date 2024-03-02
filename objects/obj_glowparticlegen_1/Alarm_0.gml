if (x > (__view_get(VIEW_PROP_CAM_X, 0) - 100) && x < ((__view_get(VIEW_PROP_CAM_X, 0) + __view_get(VIEW_PROP_CAM_WIDTH, 0)) + 100))
{
    if (y > (__view_get(VIEW_PROP_CAM_Y, 0) - 100) && y < ((__view_get(VIEW_PROP_CAM_Y, 0) + __view_get(VIEW_PROP_CAM_HEIGHT, 0)) + 100))
        instance_create(((x + random(60)) - 20), (y - 15), obj_glowparticle_1)
}
alarm[0] = 10
