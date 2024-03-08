if (instance_exists(obj_shaker) == false)
{
    if (on == 1)
    {
		camera_set_view_pos(view_camera[0], round(((obj_mainchara.x - (camera_0_width / 2)) + 10)), round(((obj_mainchara.y - (camera_0_height / 2)) + 10)))
    }
}
if (on == 1)
{
    x = (camera_0_x + stayx)
    if (x >= (room_width - camera_0_width))
        x = (room_width - camera_0_width)
    y = (camera_0_y + stayy)
    if (y <= 200)
        y = 200
    if (camera_0_y <= 0)
        camera_set_view_pos(view_camera[0], camera_0_x, 0)
}
if (camera_0_y <= 0)
    camera_set_view_pos(view_camera[0], camera_0_x, 0)
