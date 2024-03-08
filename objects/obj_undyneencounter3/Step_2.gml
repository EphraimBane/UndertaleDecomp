if instance_exists(obj_mainchara)
{
    with (obj_mainchara)
        __view_set(VIEW_PROP_CAM_X, 0, round(((x - (camera_0_width / 2)) + (sprite_width / 2))))
}
