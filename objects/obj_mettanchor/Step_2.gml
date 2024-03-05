if (FL_AnimationIndex <= 9 && FL_AnimationIndex > 0)
    j = FL_AnimationIndex
sprite_index = mysprite[(j - 1)]
if (instance_exists(obj_shaker) == false)
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
}
if (on == 2)
{
    adjust = 0
    if (x > ((__view_get(VIEW_PROP_CAM_X, 0) + __view_get(VIEW_PROP_CAM_WIDTH, 0)) - 50))
    {
        x -= 4
        adjust = 1
    }
    if (y > ((__view_get(VIEW_PROP_CAM_Y, 0) + __view_get(VIEW_PROP_CAM_HEIGHT, 0)) - 80))
    {
        y -= 4
        adjust = 1
    }
    if (adjust == 0)
    {
        siner += 1
        x += (cos((siner / 2)) * 0.5)
        y += sin((siner / 6))
    }
}
if (__view_get(VIEW_PROP_CAM_Y, 0) <= 0)
    __view_set(VIEW_PROP_CAM_Y, 0, 0)
