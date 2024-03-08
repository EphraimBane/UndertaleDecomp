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
    if (camera_get_view_y(view_camera[0]) <= 0)
        camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), 0)
}
if (on == 0)
{
    gravity = 0.4
    image_angle += ang
    if (y > room_height)
        instance_destroy()
}
if (camera_get_view_y(view_camera[0]) <= 0)
    camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), 0)
