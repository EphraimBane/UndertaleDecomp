if (instance_exists(obj_shaker) == 0)
{
    if (on == 1)
    {
        __view_set(VIEW_PROP_CAM_X, 0, round(((obj_mainchara.x - (__view_get(VIEW_PROP_CAM_WIDTH, 0) / 2)) + 10)))
        __view_set(VIEW_PROP_CAM_Y, 0, round(((obj_mainchara.y - (__view_get(VIEW_PROP_CAM_HEIGHT, 0) / 2)) + 10)))
    }
}
if (on == 1)
{
    x = (__view_get(VIEW_PROP_CAM_X, 0) + stayx)
    if (x >= (room_width - __view_get(VIEW_PROP_CAM_WIDTH, 0)))
        x = (room_width - __view_get(VIEW_PROP_CAM_WIDTH, 0))
    y = (__view_get(VIEW_PROP_CAM_Y, 0) + stayy)
    if (y <= 200)
        y = 200
    if (__view_get(VIEW_PROP_CAM_Y, 0) <= 0)
        __view_set(VIEW_PROP_CAM_Y, 0, 0)
}
if (__view_get(VIEW_PROP_CAM_Y, 0) <= 0)
    __view_set(VIEW_PROP_CAM_Y, 0, 0)
