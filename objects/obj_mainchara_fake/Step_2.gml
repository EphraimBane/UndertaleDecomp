if (obj_time.left == 0)
{
    if (obj_time.right == 0)
    {
        if (obj_time.down == 0)
        {
            if (obj_time.up == 0)
                moving = false
        }
    }
}
if (global.interact > 0)
{
    moving = false
    movement = 0
}
else
    movement = 1
if (xprevious != x || yprevious != y)
    moving = true
if (moving == false)
{
    image_speed = 0
    image_index = 0
}
if (cutscene == false)
{
    if (instance_exists(obj_vsflowey_shaker) == false)
    {
        __view_set(VIEW_PROP_CAM_X, 0, round(((x - (__view_get(VIEW_PROP_CAM_WIDTH, 0) / 2)) + 10)))
        __view_set(VIEW_PROP_CAM_Y, 0, round(((y - (__view_get(VIEW_PROP_CAM_HEIGHT, 0) / 2)) + 10)))
    }
}
