if instance_exists(obj_mainchara)
{
    if (obj_mainchara.cutscene == true)
    {
        o = obj_mainchara
        if (obj_mainchara.x >= 450)
            camera_set_view_target(view_camera[0], noone)
        if (obj_mainchara.x < 450)
        {
            camera_set_view_target(view_camera[0], obj_mainchara)
            __view_set(VIEW_PROP_CAM_X, 0, round(((o.x - (camera_0_width / 2)) + (o.sprite_width / 2))))
            __view_set(VIEW_PROP_CAM_Y, 0, round(((o.y - (camera_0_height / 2)) + (o.sprite_height / 2))))
        }
    }
}
