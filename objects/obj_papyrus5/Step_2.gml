if instance_exists(obj_mainchara)
{
    if (obj_mainchara.cutscene == true)
    {
        o = obj_mainchara
        if (obj_mainchara.x >= 450)
            __view_set(VIEW_PROP_CAM_TARGET, 0, noone)
        if (obj_mainchara.x < 450)
        {
            __view_set(VIEW_PROP_CAM_TARGET, 0, obj_mainchara)
            __view_set(VIEW_PROP_CAM_X, 0, round(((o.x - (view_wview(0) / 2)) + (o.sprite_width / 2))))
            __view_set(VIEW_PROP_CAM_Y, 0, round(((o.y - (view_hview(0) / 2)) + (o.sprite_height / 2))))
        }
    }
}
