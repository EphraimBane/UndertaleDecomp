draw_sprite(sprite_index, image_index, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]))
if (buffer == 1 && control_check_pressed(CancelButton) == true)
    buffer = 2
if (buffer == 1 && control_check_pressed(InteractButton) == true)
    buffer = 2
global.interact = 1
if (buffer == 2)
{
    global.interact = 0
    instance_destroy()
}
