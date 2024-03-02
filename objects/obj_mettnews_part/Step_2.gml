if (instance_exists(obj_shaker) == 0)
{
    if (on == 1)
    {
        __view_set(VIEW_PROP_CAM_X, 0, round(((obj_mainchara.x - (__view_get(VIEW_PROP_CAM_WIDTH, 0) / 2)) + 10)))
        __view_set(VIEW_PROP_CAM_Y, 0, round(((obj_mainchara.y - (__view_get(VIEW_PROP_CAM_HEIGHT, 0) / 2)) + 10)))
        if (__view_get(VIEW_PROP_CAM_Y, 0) <= 0)
            __view_set(VIEW_PROP_CAM_Y, 0, 0)
    }
}
if (on == 1)
{
    x = (__view_get(VIEW_PROP_CAM_X, 0) + stayx)
    y = (__view_get(VIEW_PROP_CAM_Y, 0) + stayy)
    if (__view_get(VIEW_PROP_CAM_Y, 0) <= 0)
        __view_set(VIEW_PROP_CAM_Y, 0, 0)
}
if (on == 0)
{
    gravity = 0.4
    image_angle += ang
    if (y > room_height)
        instance_destroy()
}
if (__view_get(VIEW_PROP_CAM_Y, 0) <= 0)
    __view_set(VIEW_PROP_CAM_Y, 0, 0)
