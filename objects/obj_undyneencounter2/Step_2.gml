if instance_exists(obj_mainchara)
{
    with (obj_mainchara)
        __view_set(VIEW_PROP_CAM_X, 0, round(((x - (camera_get_view_width(view_camera[0]) / 2)) + (sprite_width / 2))))
}
