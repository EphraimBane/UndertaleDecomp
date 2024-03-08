if (FL_AnimationIndex <= 9 && FL_AnimationIndex > 0)
    j = FL_AnimationIndex
sprite_index = mysprite[(j - 1)]
if (instance_exists(obj_shaker) == false)
{
    if (on == 1)
    {
        __view_set(VIEW_PROP_CAM_X, 0, round(((obj_mainchara.x - (camera_get_view_width(view_camera[0]) / 2)) + 10)))
        __view_set(VIEW_PROP_CAM_Y, 0, round(((obj_mainchara.y - (camera_get_view_height(view_camera[0]) / 2)) + 10)))
        if (camera_get_view_y(view_camera[0]) <= 0)
            camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), 0)
    }
}
if (on == 1)
{
    x = (camera_get_view_x(view_camera[0]) + stayx)
    y = (camera_get_view_y(view_camera[0]) + stayy)
}
if (on == 2)
{
    adjust = 0
    if (x > ((camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])) - 50))
    {
        x -= 4
        adjust = 1
    }
    if (y > ((camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])) - 80))
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
if (camera_get_view_y(view_camera[0]) <= 0)
    camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), 0)
