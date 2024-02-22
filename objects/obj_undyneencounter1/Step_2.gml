if instance_exists(obj_mainchara)
{
    with (obj_mainchara)
        __view_set(0, 0, round(((x - (__view_get(2, 0) / 2)) + (sprite_width / 2))))
    if (FL_HaveUmbrella == 1)
    {
        with (obj_mainchara)
            __view_set(0, 0, floor(((x - 160) + (sprite_width / 2))))
    }
}
