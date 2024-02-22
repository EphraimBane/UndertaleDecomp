if (side == 0)
{
    yy = __view_get(1, view_current)
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
    draw_rectangle((__view_get(0, view_current) + 16), (__view_get(1, view_current) + 5), (__view_get(0, view_current) + 304), (__view_get(1, view_current) + 80), false)
    draw_set_color(c_black)
    draw_rectangle((__view_get(0, view_current) + 19), (__view_get(1, view_current) + 8), (__view_get(0, view_current) + 301), (__view_get(1, view_current) + 77), false)
}
else
{
    yy = __view_get(1, view_current)
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
    draw_rectangle((__view_get(0, view_current) + 16), (__view_get(1, view_current) + 160), (__view_get(0, view_current) + 304), (__view_get(1, view_current) + 235), false)
    draw_set_color(c_black)
    draw_rectangle((__view_get(0, view_current) + 19), (__view_get(1, view_current) + 163), (__view_get(0, view_current) + 301), (__view_get(1, view_current) + 232), false)
}
count = 1
