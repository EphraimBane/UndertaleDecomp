// DECOMP CODE

if (view_get_visible(7))
{
	var dir_x = obj_time.right - obj_time.left;
	var dir_y = obj_time.up - obj_time.down;
	
	var cam = view_get_camera(7);
	var cam_x = camera_get_view_x(cam);
	var cam_y = camera_get_view_y(cam);
	
	camera_set_view_pos(cam, cam_x + dir_x, cam_y - dir_y);
	return;
}


//


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
if (abs((xprevious - x)) > 0.01 || abs((yprevious - y)) > 0.01)
    moving = true
if (moving == false)
{
    image_speed = 0
    image_index = 0
}
if (global.interact == 0)
{
    if (moving == true)
        global.encounter += 1
}
if (cutscene == false)
{
    if (instance_exists(obj_shaker) == 0)
    {
        __view_set(0, 0, round(((x - (__view_get(2, 0) / 2)) + 10)))
        __view_set(1, 0, round(((y - (__view_get(3, 0) / 2)) + 10)))
    }
}
with (obj_backgrounder_parent)
    event_user(0)
