draw_sprite(sprite_index, image_index, __view_get(VIEW_PROP_CAM_X, 0), __view_get(VIEW_PROP_CAM_Y, 0))
if (buffer == 1 && control_check_pressed(CancelButton) == 1)
    buffer = 2
if (buffer == 1 && control_check_pressed(InteractButton) == 1)
    buffer = 2
global.interact = 1
if (buffer == 2)
{
    global.interact = 0
    instance_destroy()
}
