__view_set(VIEW_PROP_CAM_X, 0, (random(shakex) - random(shakex)))
__view_set(VIEW_PROP_CAM_Y, 0, (random(shakey) - random(shakey)))
if (turn1 == 0)
{
    __view_set(VIEW_PROP_CAM_X, 0, (shakex * choose(1, -1)))
    __view_set(VIEW_PROP_CAM_Y, 0, (shakey * choose(1, -1)))
    turn1 = 1
}
if (decay == 1)
{
    shakex -= 1
    shakey -= 1
}
if (shakex <= 0 && shakey <= 0)
{
    camera_set_view_pos(view_camera[0], 0,  camera_get_view_y(view_camera[0]))
    camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), 0)
    instance_destroy()
}
