if instance_exists(obj_time)
{
    var scale = (camera_current_width / 640)
    if (obj_time.quit > 0)
        draw_sprite_ext(sprite_index, image_index, camera_current_x, camera_current_y, scale, scale, 0, c_white, image_alpha)
    else
        instance_destroy()
}
else
    instance_destroy()
if (image_alpha < 0.9)
    image_alpha += 0.1
