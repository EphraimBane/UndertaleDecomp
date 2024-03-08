if (FL_AnimationIndex <= 9 && FL_AnimationIndex > 0)
    j = FL_AnimationIndex
sprite_index = mysprite[(j - 1)]
if (instance_exists(obj_shaker) == false)
{
    if (on == 1)
    {
		camera_set_view_pos(view_camera[0], round(((obj_mainchara.x - (camera_0_width / 2)) + 10)), round(((obj_mainchara.y - (camera_0_height / 2)) + 10)))
        if (camera_0_y <= 0)
            camera_set_view_pos(view_camera[0], camera_0_x, 0)
    }
}
if (on == 1)
{
    x = (camera_0_x + stayx)
    y = (camera_0_y + stayy)
}
if (on == 2)
{
    adjust = 0
    if (x > ((camera_0_x + camera_0_width) - 50))
    {
        x -= 4
        adjust = 1
    }
    if (y > ((camera_0_y + camera_0_height) - 80))
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
if (camera_0_y <= 0)
    camera_set_view_pos(view_camera[0], camera_0_x, 0)
