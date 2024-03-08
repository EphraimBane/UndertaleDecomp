if (side == 0)
{
    yy = camera_get_view_y(view_camera[view_current])
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
    draw_rectangle((camera_get_view_x(view_camera[view_current]) + 16), (camera_get_view_y(view_camera[view_current]) + 5), (camera_get_view_x(view_camera[view_current]) + 304), (camera_get_view_y(view_camera[view_current]) + 80), false)
    draw_set_color(c_black)
    draw_rectangle((camera_get_view_x(view_camera[view_current]) + 19), (camera_get_view_y(view_camera[view_current]) + 8), (camera_get_view_x(view_camera[view_current]) + 301), (camera_get_view_y(view_camera[view_current]) + 77), false)
}
else
{
    yy = camera_get_view_y(view_camera[view_current])
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
    draw_rectangle((camera_get_view_x(view_camera[view_current]) + 16), (camera_get_view_y(view_camera[view_current]) + 160), (camera_get_view_x(view_camera[view_current]) + 304), (camera_get_view_y(view_camera[view_current]) + 235), false)
    draw_set_color(c_black)
    draw_rectangle((camera_get_view_x(view_camera[view_current]) + 19), (camera_get_view_y(view_camera[view_current]) + 163), (camera_get_view_x(view_camera[view_current]) + 301), (camera_get_view_y(view_camera[view_current]) + 232), false)
}
count = 1
