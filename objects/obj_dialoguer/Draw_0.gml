if (side == 0)
{
    yy = camera_current_y
    if instance_exists(writer)
    {
        if (writer.writingy > (yy + 80))
            writer.writingy -= 155
    }
    if instance_exists(obj_face)
    {
        if (obj_face.y > (yy + 80))
            obj_face.y -= 155
    }
    draw_set_color(c_white)
    draw_rectangle((camera_current_x + 16), (camera_current_y + 5), (camera_current_x + 304), (camera_current_y + 80), false)
    draw_set_color(c_black)
    draw_rectangle((camera_current_x + 19), (camera_current_y + 8), (camera_current_x + 301), (camera_current_y + 77), false)
}
else
{
    yy = camera_current_y
    if instance_exists(writer)
    {
        if (writer.writingy < (yy + 80))
            writer.writingy += 155
    }
    if instance_exists(obj_face)
    {
        if (obj_face.y < (yy + 80))
            obj_face.y += 155
    }
    draw_set_color(c_white)
    draw_rectangle((camera_current_x + 16), (camera_current_y + 160), (camera_current_x + 304), (camera_current_y + 235), false)
    draw_set_color(c_black)
    draw_rectangle((camera_current_x + 19), (camera_current_y + 163), (camera_current_x + 301), (camera_current_y + 232), false)
}
count = 1
