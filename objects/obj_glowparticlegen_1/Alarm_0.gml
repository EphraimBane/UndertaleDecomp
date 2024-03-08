if (x > (camera_get_view_x(view_camera[0]) - 100) && x < ((camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])) + 100))
{
    if (y > (camera_get_view_y(view_camera[0]) - 100) && y < ((camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])) + 100))
        instance_create(((x + random(60)) - 20), (y - 15), obj_glowparticle_1)
}
alarm[0] = 10
