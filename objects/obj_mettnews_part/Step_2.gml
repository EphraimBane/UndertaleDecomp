if (instance_exists(obj_shaker) == false)
{
    if (on == 1)
    {
        __view_set(VIEW_PROP_CAM_X, 0, round(((obj_mainchara.x - (view_wview(0) / 2)) + 10)))
        __view_set(VIEW_PROP_CAM_Y, 0, round(((obj_mainchara.y - (view_hview(0) / 2)) + 10)))
        if (view_yview(0) <= 0)
            __view_set(VIEW_PROP_CAM_Y, 0, 0)
    }
}
if (on == 1)
{
    x = (view_xview(0) + stayx)
    y = (view_yview(0) + stayy)
    if (view_yview(0) <= 0)
        __view_set(VIEW_PROP_CAM_Y, 0, 0)
}
if (on == 0)
{
    gravity = 0.4
    image_angle += ang
    if (y > room_height)
        instance_destroy()
}
if (view_yview(0) <= 0)
    __view_set(VIEW_PROP_CAM_Y, 0, 0)
