if instance_exists(obj_mainchara)
{
    with (obj_mainchara)
        __view_set(VIEW_PROP_CAM_X, 0, round(((x - (view_wview(0) / 2)) + (sprite_width / 2))))
}
