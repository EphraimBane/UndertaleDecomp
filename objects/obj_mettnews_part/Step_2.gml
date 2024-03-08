if (instance_exists(obj_shaker) == false)
{
    if (on == 1)
    {
        __view_set(VIEW_PROP_CAM_X, 0, round(((obj_mainchara.x - (camera_0_width / 2)) + 10)))
        __view_set(VIEW_PROP_CAM_Y, 0, round(((obj_mainchara.y - (camera_0_height / 2)) + 10)))
        if (camera_0_y <= 0)
            camera_set_view_pos(view_camera[0], camera_0_x, 0)
    }
}
if (on == 1)
{
    x = (camera_0_x + stayx)
    y = (camera_0_y + stayy)
    if (camera_0_y <= 0)
        camera_set_view_pos(view_camera[0], camera_0_x, 0)
}
if (on == 0)
{
    gravity = 0.4
    image_angle += ang
    if (y > room_height)
        instance_destroy()
}
if (camera_0_y <= 0)
    camera_set_view_pos(view_camera[0], camera_0_x, 0)
